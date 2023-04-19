////////////////////////////////////////////////////////////////////////////////
//
//   LLVMTA - Timing Analyser performing worst-case execution time analysis
//     using the LLVM backend intermediate representation
//
// Copyright (C) 2013-2022  Saarland University
// Copyright (C) 2014-2015 Claus Faymonville
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

#ifndef SIMPLEFUNCTIONALUNIT_H
#define SIMPLEFUNCTIONALUNIT_H

#include "MicroarchitecturalAnalysis/OutOfOrderPipelineComponents/FunctionalUnit.h"

#include <boost/optional.hpp>

namespace TimingAnalysisPass {

class SimpleFunctionalUnit : public FunctionalUnit {

public:
  SimpleFunctionalUnit();

  ~SimpleFunctionalUnit() {}

  FunctionalUnit *clone() const override;

  size_t hashcode() const override;

  bool equals(const FunctionalUnit &fu) const override;

  void output(std::ostream &stream) const override;

  bool canExecuteInstruction(const MachineInstr *mi) const override;

  bool isFree() const override;

  void executeInstruction(unsigned robTag) override;

  std::list<FunctionalUnit *>
  cycle(std::tuple<InstrContextMapping &, AddressInformation &> &dep) override;

  void flush() override;

  std::set<unsigned> getExecutingRobTags() const override;

private:
  SimpleFunctionalUnit(const SimpleFunctionalUnit &sfu);

  /**
   * ROB-Tag of the executing instruction and the time it already took
   * executing, and the times to finish this instruction
   */
  boost::optional<std::tuple<unsigned, unsigned, std::set<unsigned>>>
      executingInstruction = boost::none;
};

} // namespace TimingAnalysisPass

#endif /* SIMPLEFUNCTIONALUNIT_H */
