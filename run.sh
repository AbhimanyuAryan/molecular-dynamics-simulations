#!/bin/bash
#SBATCH --time=1:00
#SBATCH --partition=cpar
#SBATCH --constraint=k20

input_files=("inputdata.txt")

for input_file in "${input_files[@]}"
do
    echo "Running with input file: $input_file"
    ./bin/md < "$input_file"
done