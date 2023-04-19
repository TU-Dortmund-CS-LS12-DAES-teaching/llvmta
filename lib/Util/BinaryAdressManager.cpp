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
#include "LLVMPasses/StaticAddressProvider.h"
#include "RISCV.h"
#include "Util/Options.h"
#include "llvm/Target/TargetMachine.h"
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <ostream>
#include <unistd.h>

namespace TimingAnalysisPass {


BinaryBasicBlock::BinaryBasicBlock(uint64_t entry,uint64_t exit,uint64_t branchTarget,uint64_t continueTarget){
    this->entry=entry;
    this->exit=exit;
    this->branchTarget=branchTarget;
    this->continueTarget=continueTarget;
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
    
    std::ifstream ifs;
    ifs.open ("dummyBinaryfile.txt", std::ifstream::in);
    char c = ifs.get();
    while (ifs.good()) {
        std::cout << c;
        c = ifs.get();
    }

}

void BinaryAdressManager::buildBlocks(BinaryInstructionIterator *binItr){
    //TODO maybe need to provide binItr pointer instead
    //TODO does llvm reconise a BB even when a jump enters not at the entry of the block?
    uint64_t instr;
    uint64_t entry;
    uint64_t exit;
    uint64_t branchTarget;
    uint64_t continueTarget;
    bool newBlock=false;
    /*set entry for first block*/
    if(binItr->getNext(&instr)){
        entry=getAddr(instr);
        if(isBranch(instr)){
            exit=getAddr(instr);
            branchTarget=getBranchTarget(instr);
            newBlock=true;
        }

    }else{
        std::cerr << "Err: empty BinaryInstructionIterator provided. Check if binary was build successfull";
        std::exit(EXIT_FAILURE);
    }
    
    /*iterate instructions*/
    while(binItr->getNext(&instr)){
        /*if pref block was read completly get continueTarget and commit block*/
        /*then set entry for new block*/
        if(newBlock){
            continueTarget=getAddr(instr);
            binBlocks.push_back(*(new BinaryBasicBlock(entry,exit,branchTarget,continueTarget)));

            entry = getAddr(instr);
        }
        /*complete block if terminator found*/
        if(isBranch(instr)){
            exit=getAddr(instr);
            branchTarget=getBranchTarget(instr);
            newBlock=true;
        }

    }

    /*when reaching eof commit last block without targets*/
    exit=getAddr(instr);
    binBlocks.push_back(*(new BinaryBasicBlock(entry,exit,NAN,NAN)));
}

} // namespace TimingAnalysisPass