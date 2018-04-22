## Unit 0.8: Low-Level Programming, Part III

### Pointers
- Pointers are variables that store an address in memory
- Accessing a pointer usually involves changing the address register to a value retrieved from memory

**Example:**
```assembly
// Program: RaplceWithMinusOne.asm
// for (i = 0; i < n; i++) {
//    arr[i] = -1
// }
//

// Suppose the array has 50 elements
// Suppose the chosen value of n = 10

@50
D = A
@arr      // Storing the base address of arr in variable
M = D

@10
D = A
@n        // Storing the value of n in variable
M = D

@i
M = 0     // Storing the start index in variable

(LOOP)
@i
D = M
@n
D = D - M
@END
D ; JEQ    // If D == 0, this means D == M or i == n

@arr
D = M
@i
A = D + M
M = -1     // Set value at this address to -1

@i
M = M + 1  // Increment the index

@LOOP
0 ; JMP    // Continue loop

(END)
@END
0 ; JMP
```

### Input and Output

**Example:**
```assembly
/// Program: Draw a filled rectangle at the upper left 
/// corner of the screen, 16px wide and RAM[0] px long
/// Usage: put a non-negative number (rect height) in RAM[0]

@SCREEN // Default symbol pointing to screen register start
D = A
@addr
M = D   // Storing current screen address (16384) in var

@0
D = M
@n
M = D  // Storing the first row number 0 in n

@i
M = 0   // Setting the index of i to 0

(LOOP)
@i
D = M
@n
D = D - M
@STOP
D ; JGT   // If D > 0 this means i > n

@addr
A = M
M = -1    // RAM[addr] = 1111111111111111 (two's compliment)

@i
M = M + 1    // i = i + 1
@32
D = A
@addr
M = D + M   // addr = addr + 32
@LOOP
0 ; JMP

(STOP)
@STOP
0 ; JMP

```

