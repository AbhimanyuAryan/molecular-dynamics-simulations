#ifndef MD_H
#define MD_H

#include <stdio.h>
#include <cstdlib>
#include <iostream>
#include <sys/time.h>
#include <cuda.h>
#include <chrono>

cudaEvent_t start, stop;

using namespace std;

__global__ void calculateForcesAndEnergy(double *r_dev, double *a_dev, double *PE_dev, int N, double epsilon);

void checkCUDAError(const char *msg);
void startKernelTime(void);
void stopKernelTime(void);

#endif // MD_H