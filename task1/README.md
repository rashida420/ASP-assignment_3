# Task 1: Static, Stack, and Heap Allocation

## Introduction

In this task, I wanted to compare static, stack, and heap memory allocation and see how their execution times differ. I used the concepts from *Computer Systems: A Programmer’s Perspective* to understand how these three types of memory allocation work.

## Implementation
I wrote three separate C++ programs. Each program creates an array of 100,000 integers, but each uses a different type of memory allocation.

**Static allocation:** I declared the array using the `static` keyword. Its memory is allocated for the lifetime of the program, so it can be reused between function calls.
**Stack allocation:** I declared the array locally inside the function. Its memory is associated with the function call.
**Heap allocation:** I created the array using `new int[100000]` and released the memory using `delete[]` when the function finished.

I used `std::chrono` to measure the execution time. Each program called its function 100,000 times, and I ran each program three times to compare the results. I used `std::fixed` and `std::setprecision(6)` to display the execution time with six decimal places.

I compiled the programs with `g++ -O0`, which disables compiler optimizations.I only assigned values to the first and last elements of each array. I did not initialize all 100,000 elements. Therefore, the measurements show the time needed for these operations, rather than the time needed to fill the entire array.

## Output
The following table shows my measurements for 100,000 function calls.

| Allocation type | Run 1 (seconds) | Run 2 (seconds) | Run 3 (seconds) | Average (seconds) |
|---|---:|---:|---:|---:|
| Static | 0.000277 | 0.000334 | 0.000277 | 0.000296 |
| Stack | 0.046332 | 0.060415 | 0.044620 | 0.050456 |
| Heap | 0.018686 | 0.021654 | 0.026345 | 0.022228 |

## Results
In my measurements, the static array was the fastest, while the stack array took the longest. The heap array was between the two. The static array was fastest in my tests because its memory is allocated once and reused during the function calls. In the heap version, memory is allocated using `new` and released using `delete[]` every time the function runs. These operations add extra work.

The stack version was slower in my measurements, but this does not mean that stack allocation is always slower than heap allocation. The results can depend on the compiler, the computer, and how the program uses the array. Finally, these results apply only to my implementation. Since I assigned values to only two elements in each function call, the execution times could be different if I initialized or accessed the entire array.
