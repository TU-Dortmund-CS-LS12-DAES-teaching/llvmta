////////////////////////////////////////////////////////////////////////////////
//
//   LLVMTA - Timing Analyser performing worst-case execution time analysis
//     using the LLVM backend intermediate representation
//
// Copyright (C) 2013-2022  Saarland University
//
// This file is distributed under the Saarland University Software Release
// License. See LICENSE.TXT for details.
//
// THIS SOFTWARE IS PROVIDED "AS IS", WITHOUT ANY EXPRESSED OR IMPLIED
// WARRANTIES, INCLUDING BUT NOT LIMITED TO, THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE SAARLAND UNIVERSITY, THE
// CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DIRECT,
// INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING BUT NOT LIMITED TO PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
// HOWEVER CAUSED OR OTHER LIABILITY, WHETHER IN CONTRACT, STRICT
// LIABILITY, TORT OR OTHERWISE, ARISING IN ANY WAY FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS WITH THE
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH A DAMAGE.
//
////////////////////////////////////////////////////////////////////////////////

#include "Util/BinaryAdressManager.h"
//#include "LLVMPasses/StaticAddressProvider.h"
#include "RISCV.h"
#include "Util/Options.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Target/TargetMachine.h"
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <ostream>
#include <string>
#include <unistd.h>
#include <vector>

namespace TimingAnalysisPass {


BinaryBasicBlock::BinaryBasicBlock(uint64_t entry,uint64_t exit,uint64_t branchTarget,
        uint64_t continueTarget, std::vector<derivedInstr> instruction_list){
    this->entry=entry;
    this->exit=exit;
    this->branchTarget=branchTarget;
    this->continueTarget=continueTarget;
    this->instruction_list=instruction_list;
}

uint64_t BinaryBasicBlock::getEntry(){
    return this->entry;
}

uint64_t BinaryBasicBlock::getExit(){
    return this->exit;
}

uint64_t BinaryBasicBlock::getBranchTarget(){
    return this->branchTarget;
}

uint64_t BinaryBasicBlock::getContinueTarget(){
    return this->continueTarget;
}

std::vector<derivedInstr> BinaryBasicBlock::instructions(){
    return this->instruction_list;
}



BinaryInstructionIterator::BinaryInstructionIterator(std::ifstream &file){

}

bool BinaryInstructionIterator::getNext(derivedInstr *instruction){
    return false;
}



/* constructors */
BinaryAdressManager::BinaryAdressManager(TargetMachine &TM) {
    std::cout << "initializing binary adress manager...\n";
    auto Arch = TM.getTargetTriple().getArch();


    system("/workspaces/llvmta/testcases/util_scripts/BuildLinkedBinary.sh");
    if (Arch == llvm::Triple::ArchType::riscv32) {
        //TODO run RISC binary builder shellscript
        std::cout << "building RISCV_32 linked binary...\n";
        system("/workspaces/llvmta/testcases/util_scripts/BuildLinkedBinary.sh");
    }


    std::ifstream myFile;
    myFile.open("dummyBinaryfile.txt",std::ifstream::in);
    std::cout << "opended binary\n";
    char someText[256];
    myFile.read(someText, 256);
    myFile.close();
    std::cout << someText;
    std::cout << "\n";
    char tmp[256];
    getcwd(tmp, 256);
    std::cout << tmp;
    std::cout << " -dir\n";
    system("ls");
    std::cout << "\n";std::cout << "\n";

    
}

bool BinaryAdressManager::initialize(){
    return false;
}

bool BinaryAdressManager::isBranch(derivedInstr instruction){
    return false;
}
uint64_t BinaryAdressManager::getBranchTarget(derivedInstr instruction){
    return false;
}


void BinaryAdressManager::buildBlocks(BinaryInstructionIterator *binItr){
    //TODO maybe need to provide binItr pointer instead
    //TODO does llvm reconise a BB even when a jump enters not at the entry of the block?
    std::vector<derivedInstr> instruction_list;
    uint64_t entry;
    uint64_t exit;
    uint64_t branchTarget;
    uint64_t continueTarget;
    bool newBlock=false;
    /*set entry for first block*/
    derivedInstr first;
    if(binItr->getNext(&first)){
        instruction_list.push_back(first);
        entry=first.addr;
        if(this->isBranch(first)){
            exit=first.addr;
            branchTarget=this->getBranchTarget(first);
            newBlock=true;
        }

    }else{
        std::cerr << "Err: empty BinaryInstructionIterator provided. Check if binary was build successfull\n";
        std::exit(EXIT_FAILURE);
    }
    
    /*iterate instructions*/
    derivedInstr instr;
    while(binItr->getNext(&instr)){
        /*if pref block was read completly get continueTarget and commit block*/
        /*then set entry for new block*/
        if(newBlock){
            continueTarget=instr.addr;
            this->binBlocks.push_back(*(new BinaryBasicBlock(entry,exit,branchTarget,continueTarget,instruction_list)));
            std::vector<derivedInstr> tmp;
            instruction_list=tmp;
            entry = instr.addr;
            newBlock=false;
        }
        /*complete block if terminator found*/
        if(this->isBranch(instr)){
            exit=instr.addr;
            branchTarget=this->getBranchTarget(instr);
            newBlock=true;
        }
        instruction_list.push_back(instr);
        derivedInstr tmp;
        instr = tmp;
    }

    /*when reaching eof commit last block without targets*/
    exit=instr.addr;
    binBlocks.push_back(*(new BinaryBasicBlock(entry,exit,NAN,NAN,instruction_list)));

    std::cout << "BuildBlocks: found "<<binBlocks.size()<<" basic blocks\n";

    //dump blocks to file
    std::ofstream blockDump("blockDump.txt");

    for(int it=0;it<binBlocks.size();it++){
        blockDump<<"\nBB "<< it <<": \n";
        std::vector<derivedInstr> ins=binBlocks[it].instructions();
        for(int instrIt=0;instrIt<ins.size();instrIt++){
            blockDump<<"    "<<instrIt<<": "<<ins[instrIt].funct<<" ";
            for(std::string opr:ins[instrIt].operands){
                blockDump<<opr<<", ";
            }
            blockDump<<"\n";
        }

    }
    blockDump.close();

}

std::vector<BinaryBasicBlock> BinaryAdressManager::getBlocks(){
    return this->binBlocks;
}

} // namespace TimingAnalysisPass