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
#include "llvm/Target/TargetMachine.h"
#include <cstdint>
#include <fstream>
#include <iostream>
#include <string>
#include <regex>

namespace TimingAnalysisPass{


RiscvBinaryInstructionIterator::RiscvBinaryInstructionIterator(std::ifstream &file) : BinaryInstructionIterator(file){
    this->file=&file;
}

bool RiscvBinaryInstructionIterator::getNext(derivedInstr *instruction){
    char * buff=new char [64];
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
    while(!file->eof() && !file->fail() && it++<10){
        
        this->file->getline(buff,64);
        std::string line (buff);
        
        //check if label 
        instruction->isLabel=std::regex_match(line,label_expr);

        if(std::regex_match(line,instr_match,instr_expr)){
            instruction->addr=std::stoul(instr_match[1].str(),nullptr,64);
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
            std::cout <<"no match, dropped:"<<buff<<"\n";
        }
  

    }
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

    std::cout << "we here!!\n\n";

   
}

bool RiscvBinaryAdressManager::initialize(){
    std::ifstream tstfile;
    tstfile.open("binary.dump",std::ifstream::in);
    buildBlocks(new RiscvBinaryInstructionIterator(tstfile));
    tstfile.close();
    return true;
}

bool RiscvBinaryAdressManager::isBranch(derivedInstr instruction) {
    //all and only, branch instructions start with a b; jump instructions start with a j
    std::regex terminators_expr("b.*|j.*|ret");
    std::smatch term_match;
    /*std::cout << "entered isBranch :"<<instruction.funct<<"\n";
    if(std::regex_match(instruction.funct,term_match,terminators_expr)){
        std::cout<<"found terminator at: "<<instruction.addr<<"\n";
        }*/
    return std::regex_match(instruction.funct,term_match,terminators_expr);
}
  

uint64_t RiscvBinaryAdressManager::getBranchTarget(derivedInstr instruction){
    return 0;
}


} // namespace TimingAnalysisPass