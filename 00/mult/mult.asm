/// Program: Mult.asm
/// Computes: Stores the product of R0 and R1 in R2
/// Usage: Put values in R0 and R1

@R1
D=M
@n   // Stores R1 in variable n
M=D

@i
M=0  // Store loop index in variable i

@R2
M=0   // Starting sum of loop is 0      

(LOOP)
@n
D=M
@i
D=D-M
@END
D;JEQ  // If i == n then exit loop

@R0
D=M
@R2
M=D+M // Add the value of R0 to running total

@i
M=M+1  // Increment index

@LOOP
0;JEQ

(END)
@END
0;JMP
