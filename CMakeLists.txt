
#building out of llvm sources  is not possible, see:
#https://lists.llvm.org/pipermail/llvm-dev/2019-March/130706.html
message (STATUS "Found tool llvmta")

project("TimingAnalysis")

# Enable ccache if available to speed up recompilation
find_program(CCACHE_PROGRAM ccache)
if(CCACHE_PROGRAM)
  message(STATUS "Found ccache: ${CCACHE_PROGRAM}")
  set(CMAKE_C_COMPILER_LAUNCHER "${CCACHE_PROGRAM}")
  set(CMAKE_CXX_COMPILER_LAUNCHER "${CCACHE_PROGRAM}")
  message(STATUS "Using ccache to speed up recompilation")
endif()

# Option to enable unity builds for faster compilation
# Unity builds combine multiple source files to reduce template instantiation overhead
option(LLVMTA_ENABLE_UNITY_BUILD "Enable unity/jumbo builds to reduce compilation time" OFF)
if(LLVMTA_ENABLE_UNITY_BUILD)
  message(STATUS "Unity builds enabled - this may significantly reduce compilation time")
  set(CMAKE_UNITY_BUILD ON)
  set(CMAKE_UNITY_BUILD_BATCH_SIZE 8)
endif()

set(LLVM_LINK_COMPONENTS
  ${LLVM_TARGETS_TO_BUILD}
  Analysis
  AsmPrinter
  CodeGen
  Core
  IRReader
  MC
  MIRParser
  ScalarOpts
  SelectionDAG
  Support
  Target
  TransformUtils
  Vectorize
  )

message (STATUS "${PROJECT_BINARY_DIR}$")
message (STATUS "${PROJECT_SOURCE_DIR}$")

include_directories(include ${LLVM_BINARY_DIR}/lib/Target/ARM ${LLVM_SOURCE_DIR}/lib/Target/ARM ${LLVM_BINARY_DIR}/lib/Target/RISCV ${LLVM_SOURCE_DIR}/lib/Target/RISCV)

add_llvm_tool(llvmta
  llvmta/llvmta.cpp
  )

add_subdirectory(lib)

target_link_libraries(llvmta PRIVATE lpsolve55 gurobi llvmtaLLVMPasses llvmtaUtil llvmtaPathAnalysis llvmtaAnalysisFramework llvmtaPartitionUtil llvmtaPreprocessing llvmtaMemory llvmtaMicroarchitecture llvmtaMicroarchitectureOutOfOrder llvmtacrpd)
