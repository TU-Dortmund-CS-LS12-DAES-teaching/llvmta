#!/bin/bash

deve () {
  mkdir build ; cd build
  cmake -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    -DCMAKE_BUILD_TYPE=Debug \
    -DLLVM_ENABLE_RTTI=ON \
    -DLLVM_ENABLE_EH=ON \
    -DLLVM_USE_LINKER=lld \
    -DLLVM_TARGETS_TO_BUILD="ARM;RISCV" \
    -DCLANG_ENABLE_STATIC_ANALYZER=OFF \
    -DCLANG_ENABLE_ARCMT=OFF \
    -DLLVM_PARALLEL_LINK_JOBS=1 \
    -DLLVM_PARALLEL_COMPILE_JOBS=8 \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
    -DLLVM_OPTIMIZED_TABLEGEN=ON \
    -Wno-dev \
    -DLLVM_EXTERNAL_LLVMTA_SOURCE_DIR=../llvmta \
    -DLLVM_EXTERNAL_PROJECTS="llvmta" \
    -GNinja \
    ../llvm
  mv compile_commands.json ../compile_commands.json
}

lowRes () {
  mkdir build ; cd build
  cmake -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    -DCMAKE_BUILD_TYPE=Debug \
    -DLLVM_ENABLE_RTTI=ON \
    -DLLVM_ENABLE_EH=ON \
    -DLLVM_USE_LINKER=lld \
    -DLLVM_TARGETS_TO_BUILD="ARM;RISCV" \
    -DCLANG_ENABLE_STATIC_ANALYZER=OFF \
    -DCLANG_ENABLE_ARCMT=OFF \
    -DLLVM_PARALLEL_LINK_JOBS=1 \
    -DLLVM_PARALLEL_COMPILE_JOBS=4 \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
    -DLLVM_OPTIMIZED_TABLEGEN=ON \
    -Wno-dev \
    -GNinja \
    -DLLVM_EXTERNAL_LLVMTA_SOURCE_DIR=../llvmta \
    -DLLVM_EXTERNAL_PROJECTS="llvmta" \
    ../llvm
  mv compile_commands.json ../compile_commands.json
}

rele () {
  mkdir build ; cd build
  cmake -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    -DCMAKE_BUILD_TYPE=MinSizeRel \
    -DLLVM_ENABLE_RTTI=ON \
    -DLLVM_ENABLE_EH=ON \
    -DLLVM_USE_LINKER=lld \
    -DLLVM_TARGETS_TO_BUILD="ARM;RISCV" \
    -DCLANG_ENABLE_STATIC_ANALYZER=OFF \
    -DCLANG_ENABLE_ARCMT=OFF \
    -DLLVM_PARALLEL_LINK_JOBS=8 \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
    -DLLVM_ENABLE_LTO=Full \
    -DLLVM_OPTIMIZED_TABLEGEN=ON \
    -DLLVM_CCACHE_BUILD=ON \
    -Wno-dev \
    -GNinja \
    -DLLVM_EXTERNAL_LLVMTA_SOURCE_DIR=../llvmta \
    -DLLVM_EXTERNAL_PROJECTS="llvmta" \
    ../llvm
  mv compile_commands.json ../compile_commands.json
}

cl () {
  rm -rf build
}

case $1 in
  dev | development)
    deve
    ;;
  release | rel)
    rele
    ;;
  lowResources | lowRes)
    lowRes
    ;;
  clean)
    cl
    ;;
  *)
    if [ $1 ]; then
      echo "Unknown argument: $1"
    fi
    echo "Script to configure llvm and llvmta:"
    echo "  dev | development          Configure for development."
    echo "  rel | release              Configure for Release."
    echo "  lowRes | lowResources      Configure for low Ram PC."
    echo "  clean                      Removes build folder."
    exit
  ;;
esac
