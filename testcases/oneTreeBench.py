import numpy as np
import os
import xml.etree.ElementTree as ET
import subprocess
from joblib import Parallel, delayed

def runLLVMTA(node, string=""):
    #run LLVMTA for a single node
    forceLineString = "--ta-force-ILP-path=" + str(lineNumber[node])
    llvmtaOut = subprocess.run(["./runTestcase", "onetreestats_20", "--ta-quiet", string, forceLineString], cwd="/workspaces/llvmta/testcases", capture_output = True, text = True)
    #get upper bound from xml file
    foundCycles = False
    currentcycles = 0
    timingBoundString = "Calculated Timing Bound: "
    iCacheBoundString = "Calculated Instruction Cache Miss Bound: "
    dCacheBoundString = "Calculated Data Cache Miss Bound: "
    for item in llvmtaOut.stdout.split("\n"):
        if timingBoundString in item:
            foundCycles = True
            print(item[len(timingBoundString)::])
            currentcycles = int(item[len(timingBoundString)::])
        elif iCacheBoundString in item:
            foundCycles = True
            print(item[len(iCacheBoundString)::])
            currentcycles = int(item[len(iCacheBoundString)::])
        elif dCacheBoundString in item:
            foundCycles = True
            print(item[len(dCacheBoundString)::])
            currentcycles = int(item[len(dCacheBoundString)::])

    if foundCycles:
        cycles[node][0] = lineNumber[node]
        cycles[node][1] = currentcycles
    else:
        cycles[node][0] = lineNumber[node]
        cycles[node][1] = 0
    return currentcycles

def parseXML(node):
    try:
        boundFile = "/workspaces/llvmta/testcases/Benchmarks/onetreestats_20/build/main/TotalBound.xml"
        tree = ET.parse(boundFile)
        root = tree.getroot()
        currentcycles = 0
        for total in root.iter('total'):
            currentcycles = total.attrib['ub']
        done = True
        cycles[node][0] = lineNumber[node]
        cycles[node][1] = currentcycles
    except:
        cycles[node][0] = lineNumber[node]
        cycles[node][1] = 0
        done=True
        failed=True

stats = np.genfromtxt(
    '/workspaces/llvmta/testcases/Benchmarks/onetreestats_20/0_stats.csv',
    delimiter=',', dtype=int, skip_header=1)

lineNumber = stats[:, 3]

cycles = np.zeros((len(lineNumber),4))

firstRun = False

parallelWCETResults = Parallel(n_jobs=8)(delayed(runLLVMTA)(i) for i in range(0,len(lineNumber)))
parallelICacheResults = Parallel(n_jobs=8)(delayed(runLLVMTA)(i, string= "--ta-ana-type=l1icache") for i in range(0,len(lineNumber)))
parallelDCacheResults = Parallel(n_jobs=8)(delayed(runLLVMTA)(i, string="--ta-ana-type=l1icache") for i in range(0,len(lineNumber)))

#Compute WCET
for node in range(0, len(lineNumber)):
    cycles[node][0] = lineNumber[node]
    cycles[node][1] = parallelWCETResults[node] # type: ignore

#Compute l1icache "--ta-ana-type=l1icache"
for node in range(0, len(lineNumber)):
    cycles[node][2] = parallelICacheResults[node] # type: ignore

#Compute l1dcache "--ta-ana-type=l1dcache"
for node in range(0, len(lineNumber)):
    cycles[node][3] = parallelDCacheResults[node] # type: ignore

cycles = np.array(cycles)
print(cycles)
np.savetxt("Benchmarks/onetreestats_20/IDcache_only.csv", cycles, delimiter=",")
out = np.append(stats, cycles, axis=1)
np.savetxt("0_stats_wcet.csv", out, delimiter=",")
