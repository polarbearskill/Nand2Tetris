//BlackScreenLoop

// Adds 16384+...+24575.
@16384
D=A
@i // i refers to some mem. location.
M=D // i=1
(BLOOP)
@i
D=M // D=i
@24575
D=D-A // D=i-100
@BEND
D;JGT // If (i-100)>0 goto END
@i
D=M // D=i
//Make Black
@i
A=M
M=1
@i
M=M+1 // i=i+1
@BLOOP
0;JMP // Goto BLOOP
(BEND)

@BEND
0;JMP // Infinite loop

