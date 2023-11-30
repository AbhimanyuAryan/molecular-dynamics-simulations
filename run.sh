#!/bin/bash
export OMP_NUM_THREADS=$1
perf stat -e L1-dcache-load-misses -M cpi ./MDseq.exe < inputdata.txt