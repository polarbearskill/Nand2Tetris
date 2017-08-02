// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Adds 1+...+100.
@i // i refers to some mem. location.
M=1 // i=1
@R3 // R3refers to some mem. location.
M=0 // R3=0
(LOOP)
@i
D=M // D=i
@R1
D=D-A // D=i-R1
@END
D;JGT // If (i-R1)>0 goto END
@i
D=M // D=i
@R3
M=D+M // R3=R3+R2
@i
M=M+1 // i=i+1
@LOOP
0;JMP // Goto LOOP
(END)
@END
0;JMP // Infinite loop