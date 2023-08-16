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

#include "LLVMPasses/DispatchInOrderPipeline.h"

#include "LLVMPasses/DispatchMemory.h"
#include "LLVMPasses/DispatchMuArchAnalysis.h"
#include "MicroarchitecturalAnalysis/InOrderCacheState.h"
#include "MicroarchitecturalAnalysis/InOrderForwardState.h"
#include "Util/Options.h"

namespace TimingAnalysisPass {

boost::optional<BoundItv>
dispatchInOrderCacheAnalysis(AnalysisType anatype,
                             AddressInformation &addressInfo) {
  std::tuple<AddressInformation &> addrInfoTuple(addressInfo);

  if (anatype == AnalysisType::FwIDistance) {
    typedef InOrderForwardState<CacheFactory::makeOptionsDataCacheIgnComp, true>
        MuState;
    return dispatchCacheAnalysisJoin<MuState>(addrInfoTuple, "Instr ");
  }
  if (anatype == AnalysisType::FwDDistance) {
    typedef InOrderForwardState<CacheFactory::makeOptionsDataCacheIgnComp, true>
        MuState;
    return dispatchCacheAnalysisJoin<MuState>(addrInfoTuple, "Data ");
  }
  if (anatype == AnalysisType::L1DCACHE) {
    typedef InOrderCacheState<CacheFactory::makeOptionsDataCacheIgnComp, true>
        MuState;
    return dispatchCacheAnalysisJoin<MuState>(addrInfoTuple, "Data ");
  }
  assert(anatype == AnalysisType::L1ICACHE &&
         "Can only choose data or instr cache");
  typedef InOrderCacheState<CacheFactory::makeOptionsInstrCacheIgnComp, false>
      MuState;
  return dispatchCacheAnalysisJoin<MuState>(addrInfoTuple, "Instr ");
  // NILS Add my Analysis here, as self written CacheState clone
}

} // namespace TimingAnalysisPass
