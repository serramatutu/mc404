// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// Pseudocódigo
// mult = 0
// i = 0
// LOOP:
//     if i == R1 goto STOP
//     mult += R0
//     i++
//     goto LOOP
// STOP:
//     R2 = mult
// end

@mult
M=0     // mult = 0

@i
M=0     // i = 0

(LOOP)
  @i
  D=M
  @R1
  D=D-M
  @STOP
  D;JEQ // if i == R1 goto STOP

  @mult
  D=M
  @R0
  D=D+M
  @mult
  M=D   // mult += R0

  @i
  D=M
  D=D+1
  M=D   // i++

  @LOOP
  0;JMP // goto LOOP

(STOP)
  @mult
  D=M
  @R2
  M=D   // R2 = mult

(END)
@END
0;JMP
