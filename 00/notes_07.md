## Unit 0.7: Low-Level Programming, Part II

### Branching

### Number is positive?

```assembly
// Program: Signum.asm
// Computes: if R0>0
//               R1=1
//           else
//              R1=0

@R0
D = M       // D = RAM[0]

@8
D ; JGT     // If R0 > 0 goto 8

@R1
M = 0       // RAM[1] = 0
@10
0 ; JMP     // EOP

@R1
M = 0       // R1 = 1

@10
0 ; JMP     // EOP
```

### Labels

**Syntax:** `(Name)`
**Usage:** `@LABEL` where label becomes the instruction number following the declaration
- This allows us to write more descriptive code

**Example:** (this is the program above refactored to use labels)

```assembly
// Program: Signum.asm
// Computes: if R0>0
//               R1=1
//           else
//              R1=0

@R0
D = M       // D = RAM[0]

@POSITIVE
D ; JGT     // If R0 > 0 goto 8

@R1
M = 0       // RAM[1] = 0
@END
0 ; JMP     // EOP

(POSITIVE)
@R1
M = 0       // R1 = 1

(END)
@END
0 ; JMP     // EOP
```

##### Design Notes:
- The assembler translates these label references according to this contract
- The label declarations themselves are not translated
- This also frees up some worries of where we map things in memory

### Variables

- Variables allow you to name a random register and refer to it by that name from that point forward.

```assembly
// Program: Flip.asm
// flips the values of RAM[0] and RAM[1]
// 
// temp = R0
// R0 = R1
// R1 = temp

@ R0
D = M
@temp
M = D // temp = R0

@R1
D = M
@R0
M = D // R0 = R1

@temp
D = M
@R1
M = D // R0 = temp

(END)
@END
0 ; JMP
```
##### Design Notes:
- The assembler assumes that if no label declaration exists for a symbol, the user wants to create a variable.

- We also allocate the variables from `RAM[16]` onward.

### Iteration

```assembly
// Program: Sum1toN.asm
// Computes: RAM[1] = 1 + 2 + ... + n
// Usage: Put a number (n) in RAM[0]

@R0
D = M
@n
M = D         // n = R0
@i
M = 1         // i = 1
@sum
M = 0         // sum = 0

(LOOP)
@i
D = M
@n
D = D - M
@STOP
D ; JGT       // if i > n goto STOP

@sum
D = M
@i
D = D + M
@sum
M = D         // sum = sum + i
@i
M = M + 1     // i = i + 1
@LOOP
0 ; JMP

(STOP)
@sum
D = M
@R1
M = D         // RAM[1] = sum

(END)
@END
0 ; JMP
```

