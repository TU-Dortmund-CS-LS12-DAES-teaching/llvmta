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

#include "RISCV.h"
//#inlcude "llvm/RiscvAsmPrinter.cpp"
#include "RISCVISelLowering.h"
#include "RISCVTargetMachine.h"
#include "Util/RiscvBinaryAdressManager.h"
#include "llvm/CodeGen/AsmPrinter.h"
#include "llvm/CodeGen/MIRFormatter.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/CodeGen/TargetRegisterInfo.h"
#include "llvm/IR/InlineAsm.h"
#include "llvm/IR/Module.h"
#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Target/TargetLoweringObjectFile.h"
#include "llvm/Target/TargetMachine.h"
#include <cctype>
#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <memory>
#include <regex>
#include <string>
#include <vector>

namespace TimingAnalysisPass{


RiscvBinaryInstructionIterator::RiscvBinaryInstructionIterator(std::ifstream &file) : BinaryInstructionIterator(file){
    this->file=&file;
}

bool RiscvBinaryInstructionIterator::getNext(derivedInstr *instruction){
    char * buff=new char [256];
    
    
    /* match instructions: addr:.hexval[16-32bit]..<tab>instr_type<tab>.operands
    "[ ]+([0-9a-f]+)[/:](?: [a-f0-9]{2}){2,4}  [ ]*[\\t](\\w+)[\\t].+"
        catch instr addr: ([0-9a-f]+)
        catch instr type: (\\w+)
    */
    std::regex instr_expr ("[ ]+([0-9a-f]+)[/:](?: [a-f0-9]{2}){2,4}  [ ]*[\\t](\\w+)[\\t]{0,1}(.+)*");
    std::regex operand_expr ("[ ]{0,1}([^<, ]+)+(?: <[^>]+>){0,1}");
    std::regex label_expr ("[0-9a-f]+ [/<]([^>]+)[/>][/:]"); 
    std::smatch label_match;
    std::smatch instr_match;
    instruction->isLabel=false;


    while(!file->eof() && !file->fail() ){ 
        
        this->file->getline(buff,256);
        std::string line (buff);
        
        //check if label 
        if(std::regex_match(line,label_match,label_expr)){
        instruction->isLabel=true;
        instruction->label=label_match[1];
        }

        if(std::regex_match(line,instr_match,instr_expr)){
            instruction->addr=std::stoul(instr_match[1].str(),nullptr,16);
            instruction->funct=instr_match[2].str();

            //iterate operand string to extract operand list
            std::string oplst=instr_match[3].str();
            std::sregex_iterator regIt (oplst.begin(),oplst.end(),operand_expr);
            std::sregex_iterator end;
            while(!(end==regIt)){
                std::smatch op_match=*regIt;
                instruction->operands.push_back(op_match[1].str());
                regIt++;
            }

            return true;
        }

    }
    assert(file->eof()&&"Reading binary finished in erroneous state");
    return false;
}



RiscvBinaryAdressManager::RiscvBinaryAdressManager(TargetMachine &TM) : BinaryAdressManager(TM) {
    std::cout << "Initializing Riscv binary address manager...\n";
    auto Arch = TM.getTargetTriple().getArch();

    if (Arch == llvm::Triple::ArchType::riscv32) {
        //TODO run RISC binary builder shellscript
        std::cout << "building RISCV_32 linked binary..."
            << system("/workspaces/llvmta/testcases/util_scripts/BuildLinkedBinary.sh")<<"\n";
        
    }
}

bool RiscvBinaryAdressManager::initialize(){
    std::ifstream tstfile;
    tstfile.open("binary.dump",std::ifstream::in);
    buildBlocks(new RiscvBinaryInstructionIterator(tstfile));
    tstfile.close();
    return true;
}


bool  RiscvBinaryAdressManager::instrMatch(derivedInstr d_ins, MachineInstr *m_ins){
    
    const TargetInstrInfo *TII;
    const TargetRegisterInfo *TRI;
    try {
    TII=m_ins->getParent()->getParent()->getSubtarget().getInstrInfo();
    TRI=m_ins->getParent()->getParent()->getSubtarget().getRegisterInfo();
    } catch (...) {
        return false;
        std::cout<<"can't resolve TII/TRI, no match\n";
    }
    
    //get instruction-function mnemonic
    std::string m_func=TII->getName(m_ins->getOpcode()).str();
    std::vector<std::string> m_ops;

    //get non transient operands as strings
    for(auto op:m_ins->operands()){
       if(op.isReg()){
            //translating Reg Number to Reg Name
            std::string opname=TRI->getName(op.getReg());
            //converting string to lowercase
            std::transform(opname.begin(), opname.end(), opname.begin(),
                [](unsigned char c){ return std::tolower(c); });
            m_ops.push_back(opname);
        }else if(op.isImm()){
            m_ops.push_back(std::to_string(op.getImm()));
        } 
    }

    
    //softmatch PseudoBR to j
    if(m_func=="PseudoBR"){
        return d_ins.funct=="j";
    }

    //match alias: addi [x],zero,imm -> li [x],imm
    // !plattform dependent: zero register
    if(m_func=="ADDI"){
        //operands are zero, imm
        if(m_ops[1]=="x0" && m_ins->getOperand(2).isImm()){
            if(d_ins.funct=="li" && d_ins.operands[0]==m_ops[0] 
                    && d_ins.operands[1]==m_ops[2]){
                return true;
            }
        }
    }

    //alias addi xT,xS, 0 <-> mv xT,xS
    if(m_func=="ADDI" && m_ops.size()>2 &&m_ops[2]=="0"){
        if(d_ins.funct=="mv" && d_ins.operands[0]==m_ops[0] && d_ins.operands[1]==m_ops[1]){
            return true;
        }
    }

    //addi xT,xS <-> mov xT,xS   (potential error)
    if(m_func=="ADDI" && m_ops.size()==2){
        if(d_ins.funct=="mv" && d_ins.operands[0]==m_ops[0] && d_ins.operands[1]==m_ops[1]){
            return true;
        }
    }

    //snez xT,xS <-> sltu xT, x0, xS
    if(m_func=="SLTU"){
        if(d_ins.funct=="snez" && m_ops[1]=="x0" && d_ins.operands[0]==m_ops[0] && d_ins.operands[1]==m_ops[2]){
            return true;
        }
    }

    //not xT,xS <-> xori xT,xS,-1 
    if(m_func=="XORI"){
        if(d_ins.funct=="not" && m_ops[2]=="-1" && d_ins.operands[0]==m_ops[0] && d_ins.operands[1]==m_ops[1]){
            return true;
        }
    }

    //seqz rd, rs <-> sltiu rd, rs, 1
    if(m_func=="SLTIU"){
        if(d_ins.funct=="seqz" && m_ops[2]=="1" && d_ins.operands[0]==m_ops[0] && d_ins.operands[1]==m_ops[1]){
            return true;
        }
    }

    //PseudoRET <-> ret 
    if(m_func=="PseudoRET" && d_ins.funct=="ret"){
        return true;
    }

    //softMatch the rest by instruction mnemonic
    return (strcasecmp(d_ins.funct.c_str(), m_func.c_str())==0);


    return false;
}


int RiscvBinaryAdressManager::expandsToAmount(MachineInstr *mins){
    const TargetInstrInfo* TII;
    try {
        TII=mins->getParent()->getParent()->getSubtarget().getInstrInfo();
    } catch (...) {
        std::cout<<"RiscvBinaryAdressManager::expandsToAmount: cant resolve TII\n";
        return 0;
    }

    //pseudocall expands to auipc + jalr
    if(TII->getName(mins->getOpcode()).str()=="PseudoCALL")
    return 2;

    //default
    return 1;
}

derivedInstr RiscvBinaryAdressManager::regroupOneToManyInstruction(MachineInstr *m_ins,
         std::vector<derivedInstr> d_insVec){
    derivedInstr tmp;
    const TargetInstrInfo* TII;
    try {
        TII=m_ins->getParent()->getParent()->getSubtarget().getInstrInfo();
    } catch (...) {
        std::cout<<"RiscvBinaryAdressManager::regroupOneToManyInstruction: cant resolve TII\n";
        return tmp;
    }

    //build PseudoCALL pseudo-derivedInstr 
    if(TII->getName(m_ins->getOpcode()).str()=="PseudoCALL"){
        if(d_insVec[0].funct=="auipc" && d_insVec[1].funct=="jalr"){
            tmp.funct="PseudoCALL";
            //choose most significant instructions adress as group representative
            tmp.addr=d_insVec[1].addr;
            tmp.operands=d_insVec[1].operands;
            //jump label/ function entry would be first instr
            tmp.isLabel=d_insVec[0].isLabel;
            tmp.label=d_insVec[0].label;
            
            return tmp;
        }
        std::cout<<"pseudo doesnt match:"<<d_insVec[0].funct<<d_insVec[1].funct<<d_insVec[0].addr<<"\n";
    }
    std::cout<<"Pseudo to build not implemented\n";
    return tmp;
}

bool RiscvBinaryAdressManager::isBranch(derivedInstr instruction) {
    //all and only, branch instructions start with a b; jump instructions start with a j
    std::regex terminators_expr("b.*|j.*|ret");
    std::smatch term_match;
    bool isTerm;

    //is branching operator
    isTerm=std::regex_match(instruction.funct,term_match,terminators_expr);

    return isTerm;
}
  

uint64_t RiscvBinaryAdressManager::getBranchTarget(derivedInstr instruction){
    return 0;
}





} // namespace TimingAnalysisPass