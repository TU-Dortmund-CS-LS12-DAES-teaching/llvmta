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
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/CodeGen/TargetSubtargetInfo.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Target/TargetMachine.h"
#include <cassert>
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
    this->instruction_list=std::vector<derivedInstr>(instruction_list);
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
    std::cout << "Initializing binary adress manager...\n";
}

bool BinaryAdressManager::initialize(){
    return false;
}

bool BinaryAdressManager::instrMatch(derivedInstr dins, MachineInstr *mins){
    return false;
}

int BinaryAdressManager::expandsToAmount(MachineInstr *mins){
    return 0;
}

derivedInstr BinaryAdressManager::regroupOneToManyInstruction(MachineInstr *m_ins,
     std::vector<derivedInstr> d_insVec){
    derivedInstr tmp;
    return tmp;
}

bool BinaryAdressManager::isBranch(derivedInstr instruction){
    return false;
}
uint64_t BinaryAdressManager::getBranchTarget(derivedInstr instruction){
    return false;
}


void BinaryAdressManager::buildBlocks(BinaryInstructionIterator *binItr){
    std::vector<derivedInstr> instruction_list;
    derivedMF currentFunction;
    
    uint64_t entry;
    uint64_t exit;
    uint64_t branchTarget;
    uint64_t continueTarget;
    bool newBlock=false;
    /*set entry for first block*/
    derivedInstr first;
    if(binItr->getNext(&first)){
        assert(first.isLabel&&"first instruction did not start a new Function");
        currentFunction.functionName=first.label;
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
        if(instr.isLabel && binMF.size()>0){   
            /*mark block as complete when encountering function start inside*/
            /*containing function likely marked as noreturn */         
            newBlock=true;
        }
        /*if pref block was read completly get continueTarget and commit block*/
        /*then set entry for new block*/
        if(newBlock){
            continueTarget=instr.addr;
            currentFunction.binBlocks.push_back(*(new BinaryBasicBlock(entry,exit,branchTarget,continueTarget,instruction_list)));
            std::vector<derivedInstr> tmp;
            instruction_list=tmp;
            entry = instr.addr;
            newBlock=false;
            //commit blocks and start new function when reaching function label
            if(instr.isLabel){
                this->binMF.push_back(currentFunction);
                derivedMF tmp;
                currentFunction=tmp;
                currentFunction.functionName=instr.label;
            }
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
    currentFunction.binBlocks.push_back(*(new BinaryBasicBlock(entry,exit,0,0,instruction_list)));

    /*commit last function*/
    this->binMF.push_back(currentFunction);

    //dump blocks to file
    std::ofstream blockDump("blockDump.txt");
    for(long unsigned int fIt=0;fIt<binMF.size();fIt++){
        blockDump<<"\nFUNCTION "<<fIt<<": "<<binMF[fIt].functionName<<"\n";
        for(long unsigned int it=0;it<binMF[fIt].binBlocks.size();it++){
            blockDump<<"\n BB "<< it <<": \n";
            std::vector<derivedInstr> ins=binMF[fIt].binBlocks[it].instructions();
            for(long unsigned int instrIt=0;instrIt<ins.size();instrIt++){
                blockDump<<"    "<<instrIt<<": "<<ins[instrIt].funct<<" ";
                for(std::string opr:ins[instrIt].operands){
                    blockDump<<opr<<", ";
                }
                blockDump<<"\n";
            }

        }
    }
    blockDump.close();

}

std::vector<derivedMF> BinaryAdressManager::getMFs(){
    return this->binMF;
}

derivedMF BinaryAdressManager::getMFbyName(std::string strRefName){
    for(derivedMF mf:this->binMF){
        if(mf.functionName==strRefName){
            return mf;
        }
    }
    std::cout<<"unknown function name:"<<strRefName<<"\n";
    assert(false&&"function lookup failed, Name unknown");
}

std::vector<std::vector<derivedInstr>> BinaryAdressManager::getInstructionsInLLVMStructure(MachineFunction* F){
    derivedMF mf=this->getMFbyName(F->getName().str());
    std::vector<BinaryBasicBlock> sourceBlocks=mf.binBlocks;
    unsigned blockIt=0;
    unsigned instrIt=0;
    std::vector<std::vector<derivedInstr>> restructuredList;

    for (MachineFunction::iterator FI = F->begin(); FI != F->end(); ++FI) {
        //assert(instrIt==0 &&"start of MBB should correspond to start of binBB, even if MBB isn't well terminated");
        if(instrIt>=sourceBlocks[blockIt].instructions().size()){
            blockIt++;
            instrIt=0;
        }

        //create a instrList for each MBB
        std::vector<derivedInstr> instructions;

        assert(sourceBlocks.size()>blockIt && sourceBlocks[blockIt].instructions().size()>instrIt);
        //uint64_t blockEntry=sourceBlocks[blockIt].instructions()[instrIt].addr;

        //iterate MBB instructions
        for(MachineInstr &mi: *FI){

            //ignore instructions that have no effect later on and thus have no real instruction to match to
            if(!mi.isTransient()){

                //regroup one to many instructions
                int expandsTo=this->expandsToAmount(&mi);
                if(expandsTo>1){

                    std::vector<derivedInstr> expandedInstr;
                    for(int i=0;i<expandsTo;i++){
                        if(sourceBlocks[blockIt].instructions().size()<=instrIt){
                            instrIt=0;
                            blockIt++;
                            assert(blockIt<sourceBlocks.size());
                        }
                        expandedInstr.push_back(sourceBlocks[blockIt].instructions()[instrIt]);
                        instrIt++;
                    }
                    //regenerate pseudo instr and add to list
                    derivedInstr pseudo=this->regroupOneToManyInstruction(&mi, expandedInstr);
                    assert(this->instrMatch(pseudo, &mi));
                    instructions.push_back(pseudo);

                }else{
                    if(sourceBlocks[blockIt].instructions().size()<=instrIt){
                            instrIt=0;
                            blockIt++;
                            assert(blockIt<sourceBlocks.size());
                    }
                    //assert instructions match
                    assert(this->instrMatch(sourceBlocks[blockIt].instructions()[instrIt],&mi));
                    instructions.push_back(sourceBlocks[blockIt].instructions()[instrIt]);
                    instrIt++;
                }
            }
        }

        //end of MBB

        restructuredList.push_back(std::vector<derivedInstr>(instructions));
    }
    return restructuredList;
}



} // namespace TimingAnalysisPass