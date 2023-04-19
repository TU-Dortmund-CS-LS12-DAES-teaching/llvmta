#TODO get target arch (shell script parameters?)
#TODO generate linked binary

#binary="./dummyBinaryfile.txt"
#echo "still TODO" >> $binary
clang -O -c optimized.ll --target=riscv32 -o binary
llvm-objdump binary -d -M numeric > binary.dump
