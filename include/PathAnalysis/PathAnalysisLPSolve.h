////////////////////////////////////////////////////////////////////////////////
//
//   LLVMTA - Timing Analyser performing worst-case execution time analysis
//     using the LLVM backend intermediate representation
//
// Copyright (C) 2013-2022  Saarland University
// Copyright (C) 2014-2015  Claus Faymonville
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

#ifndef PATHANALYSISLPSOLVE_H
#define PATHANALYSISLPSOLVE_H

#include "LLVMPasses/TimingAnalysisMain.h"
#include "PathAnalysis/PathAnalysis.h"
#include "PathAnalysis/Variable.h"
#include "Util/Graph.h"
#include "Util/Util.h"

#include <lpsolve/lp_lib.h>

namespace TimingAnalysisPass {

class PathAnalysisLPSolve : public PathAnalysis {
public:
  PathAnalysisLPSolve(ExtremumType extremum, const VarCoeffVector &objfunc,
                      const std::list<GraphConstraint> &constraints);

  virtual ~PathAnalysisLPSolve();

  virtual bool calculateExtremalPath() override;
  virtual void
  getExtremalPath(std::map<std::string, double> &valuation) override;

  virtual void dump(std::ostream &mystream) override;

  virtual bool isInfinite() override;
  virtual bool hasSolution() override;
  virtual BoundItv getSolution() override;
  virtual bool isSolutionBound() override;

protected:
  virtual void buildModel() override;

private:
  /**
   * lp_solve model
   */
  lprec *lp;

  void createEmptyLp();

  void constructObjectiveFunction();

  void addAdditionalConstraints();

  void addConstraint(const GraphConstraint &cstr);

  int varCoeffVectorIntoArrays(const VarCoeffVector &variables, REAL *row,
                               int *colno);

  unsigned getVarId(const Variable &var);

  std::map<Variable, unsigned> var2idMap;

  unsigned nextVarId = 1;
};

} // namespace TimingAnalysisPass

#endif
