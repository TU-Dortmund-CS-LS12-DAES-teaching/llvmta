message(STATUS "Found Util LIB")

add_llvm_library(llvmtaUtil
Graph.cpp
Options.cpp
PersistenceScope.cpp
Statistics.cpp
Util.cpp
UtilPathAnalysis.cpp
Vertex.cpp
AbstractAddress.cpp
BinaryAdressManager.cpp
RiscvBinaryAdressManager.cpp
DEPENDS LLVMAnalysis LLVMCodeGen LLVMCore LLVMSupport LLVMTarget
)

