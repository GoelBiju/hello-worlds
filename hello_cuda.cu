/*
    Hello World - CUDA

    Compile by:
        nvcc hello_cuda.c -o hello_cuda
*/


#include <stdio.h>


// Global specifier indicates that the function runs on device (GPU).
// These functions can be called through the host code (e.g. main()) and also known as "kernels".
__global__ void cuda_hello(){
        printf("Hello World from GPU!\n");
}


int main(){
        // When kernel is called, it's execution configuration is provided through <<<...>>> syntax.
        // This is a "kernel launch".
        cuda_hello<<<1, 1>>>();
        return 0;
}
