// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

@LOOP //Goto 10
0;JMP //Goto 10

(BLACK)
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
M=-1
@i
M=M+1 // i=i+1
@BLOOP
0;JMP // Goto BLOOP
(BEND)

@LOOP //Goto 10
0;JMP //Goto 10

(WHITE)
@16384
D=A
@j // i refers to some mem. location.
M=D // i=1
(WLOOP)
@j
D=M // D=i
@24575
D=D-A // D=i-100
@WEND
D;JGT // If (i-100)>0 goto END
@j
D=M // D=i
//Make Black
@j
A=M
M=0
@j
M=M+1 // i=i+1
@WLOOP
0;JMP // Goto BLOOP
(WEND)

@LOOP //Goto 10
0;JMP //Goto 10

(LOOP)

@24576 //Pull Keyboard
D=M    //Pull Keyboard
@BLACK
D;JGT //If Keyboard is greater than 0 make screen black

@24576 //Pull Keyboard
D=M    //Pull Keyboard
@WHITE
D;JEQ //If Keyboard is greater than 0 make screen white