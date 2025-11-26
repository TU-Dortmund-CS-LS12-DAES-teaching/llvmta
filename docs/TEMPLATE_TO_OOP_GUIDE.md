# Template to OOP Refactoring Guide

## Overview

This document provides practical guidance on how to refactor template-heavy code to use Object-Oriented Programming (OOP) patterns, with specific examples from LLVMTA.

## When to Refactor Templates to OOP

Templates are appropriate when:
- Type safety is required at compile time
- Zero runtime overhead is critical
- Working with generic containers or algorithms
- Implementing SFINAE or compile-time type traits

Templates should be refactored to OOP when:
- Function pointers or callable objects are used as template parameters
- Multiple instantiations of the same logic with different parameters
- Template instantiations cause long compilation times
- Runtime polymorphism would be more appropriate

## Pattern 1: Function Pointer Template Parameters → Strategy Pattern

### Before (Template-Based)

```cpp
template <AbstractCyclingMemory* (*makeBgMem)()>
class SingleMemoryTopology {
public:
    SingleMemoryTopology() : memory(makeBgMem()) {}
    
private:
    AbstractCyclingMemory* memory;
};

// Usage creates separate instantiations
SingleMemoryTopology<makeOptionsBackgroundMem> topology1;
SingleMemoryTopology<makeOptionsPrivInstrMem> topology2;
```

**Problem**: Each function pointer creates a unique template instantiation, multiplying compilation time.

### After (OOP-Based)

```cpp
class SingleMemoryTopology {
public:
    using FactoryFn = std::function<AbstractCyclingMemory*()>;
    
    explicit SingleMemoryTopology(FactoryFn factory)
        : memory(factory()) {}
    
private:
    AbstractCyclingMemory* memory;
};

// Usage with runtime polymorphism
SingleMemoryTopology topology1(makeOptionsBackgroundMem);
SingleMemoryTopology topology2(makeOptionsPrivInstrMem);
```

**Benefits**:
- Single class definition (no instantiations)
- Faster compilation
- More flexible (can change factory at runtime)
- Easier debugging (no template errors)

**Trade-offs**:
- Small runtime overhead (std::function call vs. direct call)
- Loss of compile-time optimization opportunities

## Pattern 2: Non-Type Template Parameters → Constructor Parameters

### Before (Template-Based)

```cpp
template <CacheTraits* T, class C>
class AbstractCacheImpl {
public:
    AbstractCacheImpl() : cacheSets(T->N_SETS) {}
    
private:
    std::vector<SharedPtr> cacheSets;
};

// Global cache configurations
extern CacheTraits icacheConf;
extern CacheTraits dcacheConf;

// Separate instantiations for each configuration
AbstractCacheImpl<&icacheConf, LruMaxAge> instrCache;
AbstractCacheImpl<&dcacheConf, LruMaxAge> dataCache;
```

**Problem**: Pointer to global object as template parameter creates unique types.

### After (OOP-Based)

```cpp
template <class C>  // Still templated on cache analysis type
class AbstractCacheImpl {
public:
    explicit AbstractCacheImpl(const CacheTraits& config)
        : traits(config), cacheSets(config.N_SETS) {}
    
private:
    const CacheTraits& traits;
    std::vector<SharedPtr> cacheSets;
};

// Global cache configurations (same as before)
extern CacheTraits icacheConf;
extern CacheTraits dcacheConf;

// Same type, different configuration
AbstractCacheImpl<LruMaxAge> instrCache(icacheConf);
AbstractCacheImpl<LruMaxAge> dataCache(dcacheConf);
```

**Benefits**:
- Reduces template instantiations by N (where N is number of configurations)
- Faster compilation
- Same runtime performance (reference to config)

## Pattern 3: Boolean Template Parameters → Runtime Flags

### Before (Template-Based)

```cpp
template <bool LowerBoundNeeded, bool UpperBoundNeeded, bool AllowJoin>
class IntervalCounter {
public:
    void join(const IntervalCounter& other) {
        if (AllowJoin) {
            // join logic
        } else {
            assert(*this == other);
        }
    }
};

// Creates 2^3 = 8 possible instantiations
IntervalCounter<true, true, false> counter1;
IntervalCounter<false, true, true> counter2;
```

**Problem**: Boolean parameters create exponential template instantiations.

### After (OOP-Based)

```cpp
class IntervalCounter {
public:
    IntervalCounter(bool lowerNeeded, bool upperNeeded, bool allowJoin)
        : lowerBoundNeeded(lowerNeeded),
          upperBoundNeeded(upperNeeded),
          allowJoin(allowJoin) {}
    
    void join(const IntervalCounter& other) {
        if (allowJoin) {
            // join logic
        } else {
            assert(*this == other);
        }
    }
    
private:
    bool lowerBoundNeeded;
    bool upperBoundNeeded;
    bool allowJoin;
};

// Single class, configured at runtime
IntervalCounter counter1(true, true, false);
IntervalCounter counter2(false, true, true);
```

**Benefits**:
- Single class instead of 8 instantiations
- Much faster compilation
- Easier to add new configuration options

**Trade-offs**:
- Runtime boolean checks instead of compile-time elimination
- Minimal performance impact (branch prediction handles this well)

## Refactoring Strategy

When refactoring templates to OOP:

1. **Identify candidates**: Look for templates with non-type parameters, especially function pointers
2. **Measure impact**: Count template instantiations to prioritize high-impact refactorings
3. **Refactor incrementally**: Start with leaf classes, work up the dependency tree
4. **Add tests**: Ensure behavior is preserved
5. **Benchmark**: Measure compilation time improvement
6. **Profile**: Check for runtime performance regressions (usually negligible)

## Example: MemoryTopologyFactory

LLVMTA includes `MemoryTopologyFactory` as a reference implementation:

```cpp
#include "Memory/MemoryTopologyFactory.h"

// Create factory with OOP approach
auto factory = MemoryTopologyFactory(makeOptionsBackgroundMem);
auto* memory = factory.createMemory();
```

This demonstrates how to replace:
```cpp
SingleMemoryTopology<makeOptionsBackgroundMem> topology;
```

With runtime polymorphism that doesn't require template instantiation.

## Migration Path for LLVMTA

Priority areas for template-to-OOP refactoring:

1. **High Priority** (Many instantiations, frequently included):
   - `SingleMemoryTopology<makeBgMem>` → Accept factory function in constructor
   - `SeparateCachesMemoryTopology<makeI, makeD, BgMem>` → Accept factories
   - `AbstractCacheImpl<CacheTraits*, C>` → Accept CacheTraits by reference

2. **Medium Priority** (Some instantiations):
   - `InOrderPipelineState<MemoryTopology>` → May need architectural changes
   - `OutOfOrderPipelineState<MemoryTopology>` → May need architectural changes

3. **Low Priority** (Legitimate template use):
   - `SharedStorage<T>` → Generic container, keep as template
   - SFINAE utilities → Compile-time type checking, keep as template

## Conclusion

Not all templates should be refactored. The goal is to reduce compilation times by eliminating unnecessary template instantiations while maintaining code quality and performance. Focus on function pointer and non-type template parameters as the primary refactoring targets.
