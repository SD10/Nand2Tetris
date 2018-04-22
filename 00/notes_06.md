## Unit 0.6: Low-Level Programming, Part I

### Add Two Numbers

```assembly
// Program: Add2.asm
// Computes: RAM[2] = RAM[0] + RAM[1]
// Usage: put values in RAM[0], RAM[1]

@0
D = M      // D = RAM[0]
@1
D = D + M  // D = D + RAM[1]
@2
M = D      // RAM[2] = D
@6
0 ; JMP
```
**Note: The last two instructions are to put the program into an infinite loop. 
This is to prevent a malicious attack where a hacker can insert code at a later point in memory. **

### Built-in symbols

#### Virtual Registers
- Used to denote virtual registers `R0` - `R15`
- This is because the `A` register can be used as an address or a data register
- Using the `R(N)` syntax for the first 16 registers gives us better insight into what our code does
- This is pure sugar
- **Note: Hack is case sensitivie. R5 != r5**

#### Input & Output
- `SCREEN` and `KBD` for screen and keyboard respectively

#### VM Symbols
- `SP`, `LCL`, `ARG`, `THIS`, `THAT`
