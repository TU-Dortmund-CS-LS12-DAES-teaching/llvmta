#include "LLVMPasses/ForwardDistanceAnalysisPass.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/Pass.h"

using namespace llvm;

namespace TimingAnalysisPass {

ForwardDistanceAnalysisPass *ForwardDistanceAnalysisPass;

char ForwardDistanceAnalysisPass::ID = 0;

ForwardDistanceAnalysisPass::ForwardDistanceAnalysisPass()
    : MachineFunctionPass(ID) {}

bool ForwardDistanceAnalysisPass::runOnMachineFunction(MachineFunction &MF) {
  for (auto &MBB : MF) {
    outs() << "Contents of MachineBasicBlock:\n";
    outs() << MBB << "\n";
    const BasicBlock *BB = MBB.getBasicBlock();
    outs() << "Contents of BasicBlock corresponding to MachineBasicBlock:\n";
    outs() << BB << "\n";
  }
  return false;
}
} // namespace TimingAnalysisPass

FunctionPass *llvm::createForwardDistanceAnalysisPass() {
  return new TimingAnalysisPass::ForwardDistanceAnalysisPass();
}
