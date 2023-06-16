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



#include "Util/Util.h"
#include "llvm/CodeGen/MachineOperand.h"
#include "llvm/Target/TargetMachine.h"
#include <cstdint>
#include <fstream>
#include <iostream>
#include <vector>

using namespace llvm;
namespace TimingAnalysisPass {

/*utility structs*/

struct derivedInstr{
    bool isLabel;
    uint64_t addr;
    std::string funct;
    std::vector<std::string> operands;
};

/*internal utility class to hold basicblock adresses*/
/*while deriving block structure from binary*/
class BinaryBasicBlock{
    /*Attributes:adresses*/
    uint64_t entry;
    uint64_t exit;
    uint64_t branchTarget;
    uint64_t continueTarget; 
    std::vector<derivedInstr> instruction_list;
public:
    /*constructor*/
    BinaryBasicBlock(uint64_t entry,uint64_t exit,uint64_t branchTarget,
        uint64_t continueTarget, std::vector<derivedInstr> instruction_list);
    /*attribute accessors*/
    uint64_t getEntry();
    uint64_t getExit();
    uint64_t getBranchTarget();
    uint64_t getContinueTarget();
    std::vector<derivedInstr> instructions();
};

/*file iterator abstracting plattform-specific instruction sizes*/
class BinaryInstructionIterator{
    std::ifstream *file;
public:
    BinaryInstructionIterator(std::ifstream &file);
  
    virtual bool getNext(derivedInstr *instruction);
};

/*main utility to derive adress information from binary executable*/
class BinaryAdressManager {
    std::vector<BinaryBasicBlock> binBlocks;
public:
    /* constructor */
    BinaryAdressManager(TargetMachine &TM);

    virtual bool initialize();

    std::vector<BinaryBasicBlock> getBlocks();

    virtual bool instrMatch(derivedInstr dins,MachineInstr *mins);


private:
    
    /*platform specific functions implemented by subclass*/
    virtual bool isBranch(derivedInstr instruction);

    virtual uint64_t getBranchTarget(derivedInstr instruction);

protected:
    /*general functions*/
    void buildBlocks(BinaryInstructionIterator *binItr);
    
};






} // namespace TimingAnalysisPass