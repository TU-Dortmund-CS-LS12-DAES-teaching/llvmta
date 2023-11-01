#Compile source to object files via LLVM
clang -O0 -c optimized.ll --target=riscv32-unknown-unknown -o bin.o
#Compile and Links object files further into exectuable binary
riscv64-unknown-elf-gcc -O0 bin.o -o binary -march=rv32imac -mabi=ilp32
#Dissassemble executable and make it accessible in the file binary.dump
llvm-objdump binary -d -M numeric > binary.dump
