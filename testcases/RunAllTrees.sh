#!/bin/bash


parse(){
  search_dir=/workspaces/llvmta/testcases/Benchmarks/trees
  for entry in "$search_dir"/*
  do
    #result=$(echo "$entry" | sed "s/Suzi/$secondString/")
    #echo ${entry/trees$second_string}
    #echo "$entry" | cut -d'/' -f2- | cut -d'/' -f2- | cut -d'/' -f2- | cut -d'/' -f2- | cut -d'/' -f2-
    #echo "$entry"
    for entry2 in "$entry"/*
    do
      for entry3 in "$entry2"/*
      do
        testcase=( "$(echo "$entry3" | cut -d'/' -f2- | cut -d'/' -f2- | cut -d'/' -f2- | cut -d'/' -f2- | cut -d'/' -f2-)" )
        #testcases+=($testcase)
        #./runTestcase "$testcase"  --ta-lpsolver-effort=maximal --ta-pathana-type=graphilp &>/dev/null &
        echo "$testcase"
      done
    done
  done
}

parse | xargs -P 16 -n 1 -I CMD ./runTestcase CMD  --ta-lpsolver-effort=maximal --ta-pathana-type=graphilp 2>> error 1>> output &
