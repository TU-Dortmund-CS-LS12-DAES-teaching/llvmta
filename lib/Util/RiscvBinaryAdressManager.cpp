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

#include "Util/RiscvBinaryAdressManager.h"
#include "RISCVISelLowering.h"
#include "llvm/CodeGen/AsmPrinter.h"
#include "llvm/CodeGen/MIRFormatter.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/CodeGen/TargetRegisterInfo.h"
#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Target/TargetLoweringObjectFile.h"
#include "llvm/Target/TargetMachine.h"
#include <cctype>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <string>
#include <regex>
#include <vector>

namespace TimingAnalysisPass{


RiscvBinaryInstructionIterator::RiscvBinaryInstructionIterator(std::ifstream &file) : BinaryInstructionIterator(file){
    this->file=&file;
}

bool RiscvBinaryInstructionIterator::getNext(derivedInstr *instruction){
    char * buff=new char [256];
    //derivedInstr result;
    
    
    /* match instructions: addr:.hexval[16-32bit]..<tab>instr_type<tab>.operands
    "[ ]+([0-9a-f]+)[/:](?: [a-f0-9]{2}){2,4}  [ ]*[\\t](\\w+)[\\t].+"
        catch instr addr: ([0-9a-f]+)
        catch instr type: (\\w+)
    */
    std::regex instr_expr ("[ ]+([0-9a-f]+)[/:](?: [a-f0-9]{2}){2,4}  [ ]*[\\t](\\w+)[\\t]{0,1}(.+)*");
    std::regex operand_expr ("[ ]{0,1}([^<, ]+)+(?: <[^>]+>){0,1}");
    std::regex label_expr ("[0-9a-f]+ [/<][^>]+[/>][/:]"); 
    std::smatch instr_match;
    
    int it=0;
    while(!file->eof() && !file->fail() ){ //&& it++<10
        
        this->file->getline(buff,256);
        std::string line (buff);
        
        //check if label 
        instruction->isLabel=std::regex_match(line,label_expr);

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

            /*std::cout << "matches: \n";
            for(std::string str : instr_match){
                std::cout << str << "\n";
            }*/

            /*std::cout << instruction->addr<<", "<<instruction->funct<<", "<<instruction->isLabel;
            for(std::string op : instruction->operands){
                std::cout << " op:"<<op;
            }std::cout<<"\n";*/

            return true;
        }
        
        if(!instruction->isLabel){
            //std::cout <<"no match, dropped:"<<buff<<"\n";
        }
  

    }
    std::cout<<"\ninstr iterator reached eof:"<<file->eof()<<" .\n";
    return false;
}

RiscvBinaryAdressManager::RiscvBinaryAdressManager(TargetMachine &TM) : BinaryAdressManager(TM) {
    std::cout << "initializing riscv binary adress manager...\n";
    auto Arch = TM.getTargetTriple().getArch();


    system("/workspaces/llvmta/testcases/util_scripts/BuildLinkedBinary.sh");
    if (Arch == llvm::Triple::ArchType::riscv32) {
        //TODO run RISC binary builder shellscript
        std::cout << "building RISCV_32 linked binary...\n";
        system("/workspaces/llvmta/testcases/util_scripts/BuildLinkedBinary.sh");
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
    const TargetMachine *TM;
    try {
    TII=m_ins->getParent()->getParent()->getSubtarget().getInstrInfo();
    TRI=m_ins->getParent()->getParent()->getSubtarget().getRegisterInfo();
    TM=&m_ins->getParent()->getParent()->getTarget();
    } catch (...) {
        return false;
        std::cout<<"cant resolve TII/TRI, no match\n";
    }
    //m_ins->mayAlias(AAResults *AA, const MachineInstr &Other, bool UseTBAA)
    const MCInstrInfo *MII=TM->getMCInstrInfo();
    const MCAsmInfo *MCai=TM->getMCAsmInfo();
    //MCai->
    //MII->
    const Target tt=TM->getTarget();
    //MCTargetStreamer &TS = llvm::MCTargetStreamer.getTargetStreamer();
    //tt.st
    //tt.createAsmPrinter(TM,TS);
    
    TargetLoweringObjectFile *tlof=TM->getObjFileLowering();
    //tlof->
    //llvm::RISCVTargetLowering
    MCInst MCout;
    const MachineInstr *MIin=m_ins;
    //const AsmPrinter *asmPr= AsmPrinter(TM);
    //llvm::lowerRISCVMachineInstrToMCInst(m_ins,&MCout,);
    //parse MachineInstr
    std::string m_func=TII->getName(m_ins->getOpcode()).str();
    std::vector<std::string> m_ops;
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

    //match pseudoBranch
    /*if(m_func=="PseudoBR"){
        for(auto op:m_ins->operands()){
            op.print(llvm::outs());
            std::cout<<"Pseudobranch OPERATOR TYPE: "<<static_cast<unsigned>(op.getType())<<"\n";
        }
        //? is jump
        if(d_ins.funct == "j"){

            //? jump distance is 1 instr (effectively nop)
            std::string target=d_ins.operands[0];
            target = target.substr(0,target.find(" "));
            uint64_t targetAddr=std::stoul(target,0,16);
            return d_ins.addr==(targetAddr-4);
        }
    }*/

    //TODO: pseudobranch operand type 4 (mbb) translate to addr
    //softmatch PseudoBR to j
    if(m_func=="PseudoBR"){
        return d_ins.funct=="j";
    }

    //match alias: addi [x],zero,imm -> li [x],imm
    // !plattform dependent: zero register
    if(m_func=="ADDI"){
        //operands are zero, imm
        if(m_ops[1]=="x0" && m_ins->getOperand(2).isImm()){
            //std::cout<<"\ncaught addi suitable to match li\n";
            //std::cout<<"\n"<<d_ins.funct<<" "<<m_func <<" , "<< d_ins.operands[0]<<" "<<m_ops[0] 
            //        <<" , "<< d_ins.operands[1]<<" "<<m_ops[2]<<"\n";

            //d_ins is li, and target reg and imm match
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

    //PseudoRET <-> ret match TODO: analyze further
    if(m_func=="PseudoRET" && d_ins.funct=="ret"){
        return true;
    }

    //PseudoCALL (compilerrt_...) -> auipc x1, 0 (ra), jalr x1
    //hacky: PseudoCALL unwinds to auipc + jalr so double PseudoCALL on source and match both
    // TODO find more elegant solution
    if(m_func=="PseudoCALL"){
        if(d_ins.funct=="auipc" || d_ins.funct=="jalr"){
            return true;
        }
    }

    /*std::cout<<"<<<<<<<<<<ops: ";
    for(auto st: m_ops){
        std::cout<<st<<" ";
    }std::cout<<"\n";*/

    


    //softMatch TODO remove
    return (strcasecmp(d_ins.funct.c_str(), m_func.c_str())==0);

    //hard match TODO

    return false;
}


bool RiscvBinaryAdressManager::isBranch(derivedInstr instruction) {
    //all and only, branch instructions start with a b; jump instructions start with a j
    std::regex terminators_expr("b.*|j.*|ret");
    std::smatch term_match;
    bool isTerm;

    //is branching operator
    isTerm=std::regex_match(instruction.funct,term_match,terminators_expr);

    //ignore PseudoBranch (uncond jump effectively nop)
   /* if(instruction.funct == "j"){
        //std::cout<<"\n******\n jump:"<<instruction.funct<<instruction.operands[0];
        std::string target=instruction.operands[0];
        target = target.substr(0,target.find(" "));
        uint64_t targetAddr=std::stoul(target,0,16);
        //std::cout<<"\ntaraddr:"<<targetAddr<<", instaddr"<<instruction.addr;
        if(instruction.addr==(targetAddr-4)){
            isTerm=false;
        }
   */ // }

    /*std::cout << "entered isBranch :"<<instruction.funct<<"\n";
    if(std::regex_match(instruction.funct,term_match,terminators_expr)){
        std::cout<<"found terminator at: "<<instruction.addr<<"\n";
        }*/
    return isTerm;
}
  

uint64_t RiscvBinaryAdressManager::getBranchTarget(derivedInstr instruction){
    return 0;
}





} // namespace TimingAnalysisPass