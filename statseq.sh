#!/bin/bash
#SBATCH --time=10:00
#SBATCH --cpus-per-task=40
#SBATCH --partition=cpar
perf stat -e L1-dcache-load-misses -M cpi ./MDseq.exe < inputdata.txt