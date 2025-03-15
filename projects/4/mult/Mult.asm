// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//sum=0
@sum
M=0

//i=R1
@R1
D=M
@i
M=D

//LOOP
(LOOP)
//if(i<=0) goto STOP
@i
D=M
@STOP
D;JLE

//sum=sum+R0
@R0
D=M
@sum
M=M+D

//i=i-1
@i
M=M-1

// goto LOOP
@LOOP
0;JMP

//STOP
(STOP)

//R2=sum
@sum
D=M
@R2
M=D

//END
(END)
@END
0;JMP