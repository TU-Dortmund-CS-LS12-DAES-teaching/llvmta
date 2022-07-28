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
    -DLLVM_CCACHE_BUILD=ON \
    -DLLVM_ENABLE_RTTI=ON \
    -DLLVM_ENABLE_EH=ON \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_TARGETS_TO_BUILD="ARM;RISCV" \
    -DLLVM_EXTERNAL_CLANG_SOURCE_DIR=../$CLANG_VER.src \
    -DLLVM_EXTERNAL_LLVMTA_SOURCE_DIR=../llvmta \
    -DLLVM_EXTERNAL_PROJECTS="llvmta" \
    -DLLVM_PARALLEL_LINK_JOBS=4 \
    -DLLVM_PARALLEL_COMPILE_JOBS=16 \
    -GNinja \
    ../$LLVM_VER.src
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
    -DLLVM_CCACHE_BUILD=ON \
    -DLLVM_ENABLE_RTTI=ON \
    -DLLVM_ENABLE_EH=ON \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_TARGETS_TO_BUILD="ARM;RISCV" \
    -DLLVM_EXTERNAL_CLANG_SOURCE_DIR=../$CLANG_VER.src \
    -DLLVM_EXTERNAL_LLVMTA_SOURCE_DIR=../llvmta \
    -DLLVM_EXTERNAL_PROJECTS="llvmta" \
    -DLLVM_PARALLEL_LINK_JOBS=1 \
    -DLLVM_PARALLEL_COMPILE_JOBS=6 \
    -GNinja \
    ../$LLVM_VER.src
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
    -DLLVM_CCACHE_BUILD=ON \
    -DLLVM_ENABLE_RTTI=ON \
    -DLLVM_ENABLE_EH=ON \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_TARGETS_TO_BUILD="ARM;RISCV" \
    -DLLVM_EXTERNAL_CLANG_SOURCE_DIR=../$CLANG_VER.src \
    -DLLVM_EXTERNAL_LLVMTA_SOURCE_DIR=../llvmta \
    -DLLVM_EXTERNAL_PROJECTS="llvmta" \
    -DLLVM_PARALLEL_LINK_JOBS=4 \
    -DLLVM_PARALLEL_COMPILE_JOBS=16 \
    -GNinja \
    ../$LLVM_VER.src
  mv compile_commands.json ../compile_commands.json
}

cl() {
  rm -rf build
  rm -rf $LLVM_VER.src
  rm -rf $CLANG_VER.src
  rm -rf cmake
}

getllvm() {
  if [ ! -d $LLVM_VER.src ]; then
    while true; do
      echo "Do you wish to install $LLVM_VER [Y/N]?"
      read -r yn
      case $yn in
      [Yy]*)
        wget https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.6/$LLVM_VER.src.tar.xz
        tar -xf $LLVM_VER.src.tar.xz
        rm $LLVM_VER.src.tar.xz
        #Create patch with
        #diff -ur $LLVM_VER.src  $LLVM_VER.src.patched > $LLVM_VER.llvmta.diff
        cd $LLVM_VER.src
        patch -p1 <../patches/$LLVM_VER.llvmta.diff
        cd ..
        break
        ;;
      [Nn]*) break ;;
      *) echo "Please answer yes or no." ;;
      esac
    done
  else
    echo "It seems $LLVM_VER is already checked out!"
    echo "If that is not the case please remove the folder and try again."
  fi
}

getclang() {
  if [ ! -d $CLANG_VER.src ]; then
    while true; do
      echo ""
      echo "Do you wish to install $CLANG_VER [Y/N]?"
      read -r yn
      case $yn in
      [Yy]*)
        wget https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.6/$CLANG_VER.src.tar.xz
        tar -xf $CLANG_VER.src.tar.xz
        rm $CLANG_VER.src.tar.xz
        break
        ;;
      [Nn]*) break ;;
      *) echo "Please answer yes or no." ;;
      esac
    done
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
clean)
  cl
  ;;
*)
  if [ $1 ]; then
    echo "Unknown argument: $1"
  fi
  echo "Script to configure llvm, clang and LLVMTA:"
  echo "  dev | development          Configure for development."
  echo "  rel | release              Configure for Release."
  echo "  lowRes | lowResources      Configure for low Ram PC."
  echo "  clean                      Removes build folder."
  exit
  ;;
esac
