# Compile Time Optimization Guide for LLVMTA

## Overview

LLVMTA makes heavy use of C++ templates for performance and flexibility. While this provides excellent runtime performance, it can lead to long compilation times. This document provides guidance on how to work more efficiently with the codebase.

## Understanding the Template Usage

LLVMTA uses templates extensively for:

1. **Microarchitectural States**: `InOrderPipelineState<MemoryTopology>`, `OutOfOrderPipelineState<MemoryTopology>`
2. **Memory Topologies**: `SingleMemoryTopology<makeBgMem>`, `SeparateCachesMemoryTopology<...>`
3. **Cache Analyses**: `AbstractCacheImpl<CacheTraits*, CacheSetAnalysis>`
4. **CRTP (Curiously Recurring Template Pattern)**: Used for static polymorphism

## Build Optimization Strategies

### 1. Use Distributed Compilation

If you have multiple machines available, use distributed compilation:

```bash
./config.sh distributed
cd build
ninja -j $(nproc)
```

### 2. Incremental Builds

After the first full build, rebuild only the LLVMTA components:

```bash
cd build
ninja -j $(nproc) llvmta
```

### 3. Low Resource Configuration

For systems with limited RAM (16GB or less):

```bash
./config.sh lowRes
cd build
ninja -j 4  # Limit parallel jobs
```

### 4. Use ccache

LLVMTA now automatically detects and uses ccache if available. To install:

```bash
sudo apt-get install ccache
# ccache will be automatically used in your next build
./config.sh dev
cd build
ninja -j $(nproc)
```

### 5. Enable Unity Builds (Experimental)

Unity builds can significantly reduce compilation time by combining source files:

```bash
cd build
cmake -DLLVMTA_ENABLE_UNITY_BUILD=ON ..
ninja -j $(nproc)
```

**Note:** Unity builds may increase memory usage during compilation.

### 6. Selective Compilation

When working on specific components, you can build only those targets:

```bash
cd build
# Build only the memory analysis library
ninja -j $(nproc) llvmtaMemory

# Build only the microarchitectural analysis library  
ninja -j $(nproc) llvmtaMicroarchitecture
```

## Development Workflow Recommendations

### 1. Minimize Header Changes

Since templates are defined in headers, changes to header files trigger recompilation of all dependent files. When possible:

- Make changes in `.cpp` files rather than `.h` files
- Use forward declarations in headers
- Move implementation details to source files

### 2. Use Explicit Template Instantiation

When adding new template instantiations, consider adding them to explicit instantiation files (e.g., `lib/Memory/crpd/CacheRelatedPreemptionDelay.cpp`) to prevent redundant compilations.

### 3. Work in Isolated Modules

The codebase is organized into modules:
- `llvmtaMemory` - Memory subsystem
- `llvmtaMicroarchitecture` - Microarchitectural models
- `llvmtaPathAnalysis` - Path analysis
- `llvmtaPartitionUtil` - Partitioning utilities

Focus your changes on one module at a time to minimize rebuilds.

## Understanding Compilation Times

The slowest components to compile are:

1. **Pipeline States** (`InOrderPipelineState.h`, `OutOfOrderPipelineState.h`) - ~1300-1000 lines of template code
2. **Memory Topologies** (`SeparateCachesMemoryTopology.h`, `SingleMemoryTopology.h`) - ~600-1300 lines
3. **Path Analysis** (`DispatchPathAnalysis.h`, `StateSensitiveGraph.h`) - ~2400-2000 lines
4. **Cache Implementations** (`AbstractCache.h`) - ~780 lines

Each of these files is included by multiple translation units, and each inclusion requires full template instantiation.

## Future Improvements

Potential areas for reducing compilation times (requires significant refactoring):

1. **Replace function pointer template parameters with runtime factories**
   - Current: `SingleMemoryTopology<makeOptionsBackgroundMem>`
   - Future: `SingleMemoryTopology(factoryFunction)`

2. **Extract non-template base classes**
   - Move non-templated code to base classes
   - Use virtual functions for dynamic dispatch

3. **Use extern template declarations**
   - Prevent implicit instantiation across translation units
   - Explicitly instantiate common types in `.cpp` files

4. **Precompiled Headers**
   - Create PCH for commonly included headers
   - Requires CMake configuration changes

## Measuring Compilation Times

To identify bottlenecks in your build:

```bash
# Time individual compilation units
cd build
ninja -j1 -v 2>&1 | tee build_log.txt

# Use Clang's time-trace feature (if using Clang)
export CXXFLAGS="-ftime-trace"
cmake ...
ninja

# Analyze with Chrome's about:tracing
```

## Conclusion

While LLVMTA's template-heavy design provides excellent runtime performance, it requires patience during compilation. Following the strategies above can significantly reduce development iteration times.
