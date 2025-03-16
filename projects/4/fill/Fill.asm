// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.
(START)
@SCREEN
D=A
@n
M=D
@24577
D=A
@R1
M=D
(LOOP)
@n
D=M
@R1
D=D-M
@START
D;JEQ

@KBD
D=M
@WHITE
D;JEQ
@BLACK
0;JMP

(BLACK)
@SCREEN
D=M
@n
A=D+M
M=-1
@CONTINUE
0;JMP

(WHITE)
@SCREEN
D=M
@n
A=D+M
M=0
@CONTINUE
0;JMP

(CONTINUE)

@n
M=M+1

@LOOP
0;JMP
(END)
@END
0;JMP