# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.241.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT="jammy"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

SHELL ["/bin/bash", "-c"]

# [Optional] Uncomment this section to install additional OS packages.
 RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
        && apt-get -y install --no-install-recommends build-essential \
        lldb gcc gdb cmake make ninja-build libboost-all-dev git ccache \
        htop wget fish zsh lld time parallel lp-solve liblpsolve55-dev clangd

# Set environment variables
ENV PATH=$PATH:/workspaces/llvmta/build/bin
ENV PATH=$PATH:/workspaces/llvm/build/bin
ENV CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/llvm/lib/Target/ARM
ENV CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/llvm/lib/Target/RISCV

RUN mv /usr/lib/lp_solve/liblpsolve55.so /usr/lib/liblpsolve55.so
#RUN echo "/usr/lib/lpsolve" >> /etc/ld.so.conf.d/lpsolve.conf ; ldconfig

RUN echo "set completion-ignore-case on" >> /etc/inputrc


