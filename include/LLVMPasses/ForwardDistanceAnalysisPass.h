#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/Pass.h"
#include "llvm/Target/TargetMachine.h"

using namespace llvm;

#define FORWARD_DISTANCE_ANALYSIS_PASS_NAME                                    \
  "Analysing for forward distance printer pass"

namespace TimingAnalysisPass {

class ForwardDistanceAnalysisPass : public MachineFunctionPass {

public:
  static char ID;

  /**
   * Constructor
   */
  ForwardDistanceAnalysisPass();

  bool runOnMachineFunction(MachineFunction &MF) override;

  StringRef getPassName() const override {
    return FORWARD_DISTANCE_ANALYSIS_PASS_NAME;
  }
};

} // namespace TimingAnalysisPass

namespace llvm {

FunctionPass *createForwardDistanceAnalysisPass();

} // namespace llvm
