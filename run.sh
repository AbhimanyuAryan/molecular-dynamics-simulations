#!/bin/bash
#SBATCH --time=5:00
#SBATCH --partition=cpar
#SBATCH --constraint=k20

input_files=("inputdata.txt")

for input_file in "${input_files[@]}"
do
    echo "Running with input file: $input_file"
    
    # Use the built-in 'time' command to measure the execution time
    time -p ./bin/md < "$input_file"
done
