# Use an archlinux base as default (no base-devel)
FROM archlinux/archlinux

ENV HOME /root

SHELL ["/bin/bash", "-c"]

# Install dependences
#RUN patched_glibc=glibc-linux4-2.33-4-x86_64.pkg.tar.zst && \
#    curl -LO "https://repo.archlinuxcn.org/x86_64/$patched_glibc" && \
#    bsdtar -C / -xvf "$patched_glibc"
RUN pacman -Syyuu --noconfirm boost boost-libs cmake gdb cgdb python2 lpsolve time parallel git lib32-glibc base-devel htop wget fish zsh ninja lld lldb
RUN mkdir /workspaces

# Set environment variables
ENV PATH=$PATH:/workspaces/llvmta/build/bin
ENV PATH=$PATH:/workspaces/llvm/build/bin
ENV CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/llvm/lib/Target/ARM
ENV CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/llvm/lib/Target/RISCV
#ENV CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/cudd/cudd/cudd/:/cudd/cudd/:/cudd/cudd/st/:/cudd/cudd/mtr/:/cudd/cudd/epd/:/cudd/cudd/cplusplus
#ENV LIBRARY_PATH=$LIBRARY_PATH:/cudd/cudd/cudd/.libs/:/cudd/cudd/cplusplus/.libs/

# Gurobi and/or clpex Related commands
#RUN mkdir tools
#ENV PATH=$PATH:tools/cplex/cplex/bin/x86-64_sles10_4.1
#ENV PATH=$PATH:tools/gurobi902/linux64/bin
#ENV CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/tools/cplex/cplex/include:/tools/cplex/concert/include
#ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/tools/cplex/cplex/bin/x86-64_sles10_4.1
#ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/tools/gurobi902/linux64/lib
#ENV CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/tools/gurobi902/linux64/include
#RUN ln -s /tools/cplex/cplex/bin/x86-64_sles10_4.1/libcplex124.so /usr/lib/libcplex.so
#RUN ln -s /tools/gurobi902/linux64/lib/libgurobi90.so /usr/lib/libgurobi.so

RUN echo "set completion-ignore-case on" >> /etc/inputrc
#RUN mkdir /llvm/tools/llvmta ; mkdir /llvm/llvmta_testcases-rts
#Build cudd

#Init llvm and llvmta cmake build folder
#RUN git clone https://github.com/nilhoel1/llvm-llvmta-patched.git ; mv llvm-llvmta-patched /llvm
    #  cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DLLVM_ENABLE_RTTI=ON \
    # -DLLVM_ENABLE_EH=ON -DLLVM_TARGETS_TO_BUILD="ARM;RISCV" \
    # -DLLVM_ENABLE_ASSERTIONS=ON \
    # -DLLVM_USE_SPLIT_DWARF=ON --graphviz=test.dot /llvm/


