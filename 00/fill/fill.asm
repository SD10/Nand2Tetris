// Program: Fills screen with black pixels while a key is pressed

@SCREEN
D=A
@screenstart // Store screen start address
M=D

@KBD
D=A
@screenend  // Store screen end address
M=D-1

(CHECK)
@i
M=0  // Store current index starting at 0
@KBD
D=M
@WHITE
D;JEQ

(BLACK)
@i
D=M
@screenstart
A=D+M
M=-1

@i
D=M
@screenstart
D=M+D
@screenend
D=M-D
@CHECK
D;JEQ

@i
M=M+1
@BLACK
0;JMP

(WHITE)
@i
D=M
@screenstart
A=D+M
M=0

@i
D=M
@screenstart
D=M+D
@screenend
D=M-D
@CHECK
D;JEQ

@i
M=M+1
@WHITE
0;JMP