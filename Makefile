CC = gcc
SRC = src/
CFLAGS = -pg -fno-omit-frame-pointer -O3

.DEFAULT_GOAL = MD.exe

MD.exe: $(SRC)/MD.cpp
	$(CC) $(CFLAGS) $(SRC)MD.cpp -lm -o MD.exe

test:
	$(CC) $(CFLAGS) $(SRC)MD.cpp -lm -o MD.exe
	srun --partition=cpar perf stat -e L1-dcache-load-misses -M cpi ./MD.exe < inputdata.txt

clean:
	rm ./MD.exe

run:
	./MD.exe < inputdata.txt