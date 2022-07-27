# LLVMTA

This Repository contains LLVMTA a static timing analysis tool based on the LLVM compiler ecosystem.

## Setup with VS Code and Docker development container

1.) Get [VS CODE](https://code.visualstudio.com/) and necessary [extensions](https://code.visualstudio.com/docs/remote/remote-overview) for remote container development.

2.a.) This repository supports VS code development containers. Just press F1 inside VS code and execute "Remote-Containers: Open Worksapce in Container..". Now continue with [building](#build-the-project)  the Project. Should you prefere to build the container yourself continue with the next steps.

2.b.) Build the Docker container from the Docker file.

```
docker build -t llvmtadocker:latest - < Dockerfile
```
3.) Run the Docker dev container with Repository as Volume. The third line defines an extra Volume for the build folder and is optional.
```
docker run -i -d \
	-v {$path_to_this_repository}:/workspaces/llvmta:rw \
	-v {$path_to_build_bir}:/workspaces/llvmta/build:rw \
	--name $name_of_instance llvmtadocker:latest
```
4.) Now VS Code can be attached to the container.


## Build the project

If using VS code all config and build tasks can be triggered by shift+ctr+b.

1.) Fetch llvm fork via git sumbodule.
```
git submodule update --init --recursive
```

2.) Config the project with the ./config.sh script. Be aware that llvm and llvmta requires a lot or RAM, should your System have only 16GB of RAM choose the "lowRes" configuration.
```
Script to configure llvm and llvmta:
  dev | development          Configure for development.
  rel | release              Configure for Release.
  lowRes | lowResources      Configure for low Ram PC.
  clean                      Removes build folder.
```

3.) Build llvm, clang and llvmta with ninja.
```
cd build
ninja -j [#CPUs]
```

## Using LLVMTA
This section showcases how to use LLVMTA on a simple test case of a nested loop example. Make sure LLVMTA is compiled and in your $PATH variable.

1.) Change into the testcases folder.
```
cd testcases
```
2.) Run llvmta on the benchmark using the script
```
./runTestcase loopexamples/nested
```
All test cases are in the Benchmarks folder and only their relative path has to be handed. This will generate the following output.
```
./runTestcase loopexamples/nested
```
