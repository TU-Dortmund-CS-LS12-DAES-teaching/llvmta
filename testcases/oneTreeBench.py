import numpy as np
import os
import xml.etree.ElementTree as ET
import subprocess

stats = np.genfromtxt(
    '/workspaces/llvmta/testcases/Benchmarks/onetreestats/0_stats.csv',
    delimiter=',', dtype=int, skip_header=1)

lineNumber = stats[:, 3]

cycles = np.zeros((len(lineNumber),2))

for node in range(0, len(lineNumber)):
    #run LLVMTA for a single node
    forceLineString = "--ta-force-ILP-path=" + str(lineNumber[node])
    llvmtaOut = subprocess.run(["./runTestcase", "onetreestats", "--ta-quiet", forceLineString], cwd="/workspaces/llvmta/testcases")

    #get upper bound from xml file
    done = False
    failed = False
    while not done:
        try:
            boundFile = "/workspaces/llvmta/testcases/Benchmarks/onetreestats/build/main/TotalBound.xml"
            tree = ET.parse(boundFile)
            root = tree.getroot()
            currentcycles = 0
            for total in root.iter('total'):
                currentcycles = total.attrib['ub']
            done = True
            cycles[node][0] = lineNumber[node]
            cycles[node][1] = currentcycles
        except:
            if failed:
                    print("Stuck in inft loop for: " + str(node))
                    continue
            cycles[node][0] = lineNumber[node]
            cycles[node][1] = 0
            done=True
            failed=True

cycles = np.array(cycles)
print(cycles)
np.savetxt("cycles_only.csv", cycles, delimiter=",")
out = np.append(stats, cycles, axis=1)
np.savetxt("0_stats_wcet.csv", out, delimiter=",")
