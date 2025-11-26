////////////////////////////////////////////////////////////////////////////////
//
//   LLVMTA - Timing Analyser performing worst-case execution time analysis
//     using the LLVM backend intermediate representation
//
// Copyright (C) 2013-2022  Saarland University
//
// This file is distributed under the Saarland University Software Release
// License. See LICENSE.TXT for details.
//
////////////////////////////////////////////////////////////////////////////////

#ifndef MEMORYTOPOLOGYFACTORY_H
#define MEMORYTOPOLOGYFACTORY_H

#include "Memory/AbstractCyclingMemory.h"
#include <functional>

namespace TimingAnalysisPass {

/**
 * @brief Factory class for creating memory topologies using OOP instead of templates.
 * 
 * This class demonstrates how to replace template-based factory methods with 
 * runtime polymorphism. This approach reduces template instantiations and 
 * compilation times.
 * 
 * Example usage:
 * @code
 *   auto factory = MemoryTopologyFactory(makeOptionsBackgroundMem);
 *   auto* memory = factory.createMemory();
 * @endcode
 * 
 * This is equivalent to the template-based approach:
 * @code
 *   SingleMemoryTopology<makeOptionsBackgroundMem> topology;
 * @endcode
 * 
 * But with the advantage that it doesn't create a new template instantiation
 * for each different factory function.
 */
class MemoryTopologyFactory {
public:
  using FactoryFunction = std::function<AbstractCyclingMemory*()>;

  /**
   * @brief Construct a factory with a given memory creation function.
   * @param factoryFn Function that creates and returns a new AbstractCyclingMemory instance
   */
  explicit MemoryTopologyFactory(FactoryFunction factoryFn)
      : factoryFunction(std::move(factoryFn)) {}

  /**
   * @brief Create a new memory instance using the configured factory function.
   * @return Pointer to newly created AbstractCyclingMemory (caller owns the pointer)
   */
  AbstractCyclingMemory* createMemory() const {
    return factoryFunction();
  }

  /**
   * @brief Get the factory function.
   * @return The factory function
   */
  const FactoryFunction& getFactoryFunction() const {
    return factoryFunction;
  }

private:
  FactoryFunction factoryFunction;
};

} // namespace TimingAnalysisPass

#endif // MEMORYTOPOLOGYFACTORY_H
