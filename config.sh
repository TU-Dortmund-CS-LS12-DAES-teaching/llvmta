#!/bin/bash

CLANG_VER="clang-14.0.6"
LLVM_VER="llvm-14.0.6"

deve() {
  cd build || exit
  cmake \
    -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
    -Wno-dev \
    -Wno-suggest-override \
    -DLLVM_USE_LINKER=lld \
    -DLLVM_ENABLE_RTTI=ON \
    -DLLVM_ENABLE_EH=ON \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_TARGETS_TO_BUILD="ARM;RISCV" \
    -DLLVM_EXTERNAL_CLANG_SOURCE_DIR=../dependencies/$CLANG_VER.src \
    -DLLVM_EXTERNAL_LLVMTA_SOURCE_DIR=.. \
    -DLLVM_EXTERNAL_PROJECTS="llvmta" \
    -GNinja \
    ../dependencies/$LLVM_VER.src
  mv compile_commands.json ../compile_commands.json
}

lowRes() {
  cd build || exit
  cmake \
    -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
    -Wno-dev \
    -Wno-suggest-override \
    -DLLVM_USE_LINKER=lld \
    -DLLVM_ENABLE_RTTI=ON \
    -DLLVM_ENABLE_EH=ON \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_TARGETS_TO_BUILD="ARM;RISCV" \
    -DLLVM_EXTERNAL_CLANG_SOURCE_DIR=../dependencies/$CLANG_VER.src \
    -DLLVM_EXTERNAL_LLVMTA_SOURCE_DIR=.. \
    -DLLVM_EXTERNAL_PROJECTS="llvmta" \
    -DLLVM_PARALLEL_LINK_JOBS=1 \
    -GNinja \
    ../dependencies/$LLVM_VER.src
  mv compile_commands.json ../compile_commands.json
}

rele() {
  cd build || exit
  cmake \
    -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    -DCMAKE_BUILD_TYPE=MinSizeRel \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
    -Wno-dev \
    -Wno-suggest-override \
    -DLLVM_USE_LINKER=lld \
    -DLLVM_ENABLE_RTTI=ON \
    -DLLVM_ENABLE_EH=ON \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_TARGETS_TO_BUILD="ARM;RISCV" \
    -DLLVM_EXTERNAL_CLANG_SOURCE_DIR=../dependencies/$CLANG_VER.src \
    -DLLVM_EXTERNAL_LLVMTA_SOURCE_DIR=.. \
    -DLLVM_EXTERNAL_PROJECTS="llvmta" \
    -GNinja \
    ../dependencies/$LLVM_VER.src
  mv compile_commands.json ../compile_commands.json
}

dist() {
  cd build || exit
  cmake \
    -DCMAKE_C_COMPILER=/usr/lib/icecc/bin/gcc \
    -DCMAKE_CXX_COMPILER=/usr/lib/icecc/bin/g++ \
    -DCMAKE_BUILD_TYPE=Debug \ #RelWithDebInfo \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
    -Wno-dev \
    -Wno-suggest-override \
    -DLLVM_USE_LINKER=lld \
    -DLLVM_ENABLE_RTTI=ON \
    -DLLVM_ENABLE_EH=ON \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_TARGETS_TO_BUILD="ARM;RISCV" \
    -DLLVM_EXTERNAL_CLANG_SOURCE_DIR=../dependencies/$CLANG_VER.src \
    -DLLVM_EXTERNAL_LLVMTA_SOURCE_DIR=.. \
    -DLLVM_EXTERNAL_PROJECTS="llvmta" \
    -DLLVM_PARALLEL_COMPILE_JOBS=42 \
    -DLLVM_PARALLEL_LINK_JOBS=1 \
    -GNinja \
    ../dependencies/$LLVM_VER.src
  mv compile_commands.json ../compile_commands.json
}

ci() {
  cd build || exit
  cmake \
    -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    -DCMAKE_BUILD_TYPE=MinSizeRel \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
    -Wno-dev \
    -Wno-suggest-override \
    -DLLVM_CCACHE_BUILD=ON \
    -DLLVM_CCACHE_DIR=../.ccache \
    -DLLVM_USE_LINKER=lld \
    -DLLVM_ENABLE_RTTI=ON \
    -DLLVM_ENABLE_EH=ON \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_TARGETS_TO_BUILD="ARM;RISCV" \
    -DLLVM_EXTERNAL_CLANG_SOURCE_DIR=../dependencies/$CLANG_VER.src \
    -DLLVM_EXTERNAL_LLVMTA_SOURCE_DIR=.. \
    -DLLVM_EXTERNAL_PROJECTS="llvmta" \
    -DLLVM_PARALLEL_LINK_JOBS=1 \
    -GNinja \
    ../dependencies/$LLVM_VER.src
  mv compile_commands.json ../compile_commands.json
  cd ..
}

cla() {
  rm -rf build
  rm compile_commands.json
  cd dependencies || exit
  rm -rf llvm*.src clang*.src cmake
  cd ..
}

cl() {
  rm -rf build
}

getllvm() {
  if [ ! -d dependencies/$LLVM_VER.src ]; then
    echo "Installing $LLVM_VER"
    cd dependencies || exit
    wget https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.6/$LLVM_VER.src.tar.xz
    tar -xf $LLVM_VER.src.tar.xz
    rm $LLVM_VER.src.tar.xz
    #Create patch with
    #diff -ur $LLVM_VER.src  $LLVM_VER.src.patched > $LLVM_VER.llvmta.diff
    cd $LLVM_VER.src
    patch -p1 < ../../dependencies/patches/$LLVM_VER.llvmta.diff
    cd ../..
  else
    echo "It seems $LLVM_VER is already checked out!"
    echo "If that is not the case please remove the folder and try again."
  fi
}

getclang() {
  if [ ! -d dependencies/$CLANG_VER.src ]; then
    echo ""
    echo "Installing $CLANG_VER."
    cd dependencies || exit
    wget https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.6/$CLANG_VER.src.tar.xz
    tar -xf $CLANG_VER.src.tar.xz
    rm $CLANG_VER.src.tar.xz
    cd ..
  else
    echo "It seems $CLANG_VER is already checked out!"
    echo "If that is not the case please remove the folder and try again."
  fi
}

pre() {
  getllvm
  getclang
  BUILD_DIR="build/"
  if [ ! -d "$BUILD_DIR" ]; then
    mkdir build
  else
    echo "Build directory exists already, you may consider a clean!"
  fi

  COMPILE_COMMANDS="compile_commands.json"
  if [ ! -f "$COMPILE_COMMANDS" ]; then
    rm $COMPILE_COMMANDS
  fi
}

case $1 in
dev | development)
  pre
  deve
  ;;
release | rel)
  pre
  rele
  ;;
lowResources | lowRes)
  pre
  lowRes
  ;;
distributed | dis)
  pre
  dist
  ;;
ci)
  pre
  ci
  cd build
  ninja llvmta
  cd ..
  ;;
clean)
  cl
  ;;
cleanall)
  cla
  ;;
*)
  if [ $1 ]; then
    echo "Unknown argument: $1"
  fi
  echo "Script to configure llvm, clang and LLVMTA:"
  echo "  dev | development          Configure for development."
  echo "  rel | release              Configure for Release."
  echo "  lowRes | lowResources      Configure for low Ram PC."
  echo "  distributed | dis          Configure for icecc distributed compiler."
  echo "  clean                      Removes build folder."
  echo "  cleanall                   Removes build folder and llvm + clang."
  exit
  ;;
esac
