follow these standards for report:

https://github.com/L-Pinto/UMinho-MEI/blob/main/I/CP/Report-BucketSort.pdf


Compile the program

```bash
make all
```

```
sbatch 
```

To run and test
```
srun --partition cpar --cpus-per-task=4 --time=01:00 make runpar
```

Run for slurm
```
sbatch script.sh
```

Checkout output

```
python3 check.py cp_output_original.txt cp_output.txt
```