import numpy as np
import os
import xml.etree.ElementTree as ET
import subprocess

def getDepthAndForest(string):
    foundDepth = False
    foundForest = False
    forestSize = ""
    depthSize = ""
    for letter in string:
        if letter == "_" and not foundDepth:
            foundDepth = True
            continue
        if letter == "_" and not foundForest:
            foundForest = True
            continue
        if foundForest:
            forestSize = forestSize + letter
        elif foundDepth:
            depthSize = depthSize + letter
    return depthSize, forestSize


processes = []
rootdir = '/workspaces/llvmta/testcases/Benchmarks/trees'
llvmtaBenchPathRoot = 'trees'
trainingSets = os.listdir(rootdir)
for trainingSet in trainingSets:
    treeTypesDir = rootdir + "/" + trainingSet
    llvmtaSetDir = llvmtaBenchPathRoot + "/" + trainingSet
    treeTypes = os.listdir(treeTypesDir)
    for treeType in treeTypes:
        depth, trees = getDepthAndForest(treeType)
        optimizationsDir = treeTypesDir + "/" + treeType
        llvmtaOptDir = llvmtaSetDir+ "/" + treeType
        optimizations = os.listdir(optimizationsDir)
        for optimization in optimizations:
            # trainingset, depth, trees, cycles
            llvmtaRunDir = llvmtaOptDir + "/"+optimization
            #subprocess.run(["nohup","./runTestcase", llvmtaRunDir, "&"])
            done = False
            failed = False
            while not done:
                try:
                    boundFile = optimizationsDir + "/" + optimization + "/build/main/TotalBound.xml"
                    tree = ET.parse(boundFile)
                    root = tree.getroot()
                    for total in root.iter('total'):
                        print(trainingSet + "," + optimization + "," + depth + "," + trees + "," + total.attrib['ub'])
                    done = True
                except:
                    if failed:
                        print("Stuck in inft loop for: " + llvmtaRunDir)
                        continue
                    #subprocess.call(['bash', './runTestcase' , llvmtaRunDir],stdout=subprocess.DEVNULL)
                    print(trainingSet + "," + optimization + "," + depth + "," + trees + "," + "-1")
                    done=True
                    failed=True
            #print(llvmtaOptDir + "/"+optimization)
