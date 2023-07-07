#TODO get target arch (shell script parameters?)
#TODO generate linked binary

#binary="./dummyBinaryfile.txt"
#echo "still TODO" >> $binary
#clang -O0 -c optimized.ll --target=riscv32 -o binary
clang -O0 -c optimized.ll --target=riscv32 -o bin.o
riscv64-unknown-elf-gcc -O0 bin.o -o binary -march=rv32imac -mabi=ilp32
llvm-objdump binary -d -M numeric > binary.dump
