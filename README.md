Load Modules
```
module load gcc/7.2.0
module load cuda/11.3.1
```

Building output files
```
make
```

Run nvprof
```
sbatch run.sh
```

Checkout output

```
python3 check.py cp_output_original.txt cp_output.txt
```