#!/bin/bash
perf stat -e L1-dcache-load-misses -M cpi ./MDpar.exe < inputdata.txt