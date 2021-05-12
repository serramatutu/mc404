// primeiro, ordenar R0, R1, R2
@R2
D=M
@R0
D=D-M
@SORTPT2
D;JGE       // if (R2 >= R0) goto SORTPT2

  // if (R2 < R0)
  @R2
  D=M
  @R3
  M=D     // R3 = R2
  
  @R0
  D=M
  @R2
  M=D     // R2 = R0

  @R3
  D=M
  @R0
  M=D     // R0 = R3

// a partir daqui, com certeza R2 > R0
(SORTPT2)
@R1
D=M
@R0
D=D-M
@SORTPT3
D;JGE       // if (R1 >= R0) goto SORTPT3

  // if (R1 < RO)
  @R1
  D=M
  @R3
  M=D     // R3 = R1
  
  @R0
  D=M
  @R1
  M=D     // R1 = R0

  @R3
  D=M
  @R0
  M=D     // R0 = R3

(SORTPT3)
@R2
D=M
@R1
D=D-M
@SORTEND
D;JGE       // if (R2 >= R1) goto SORTEND

  // if (R2 < R1)
  @R2
  D=M
  @R3
  M=D     // R3 = R2
  
  @R1
  D=M
  @R2
  M=D     // R2 = R1

  @R3
  D=M
  @R1
  M=D     // R1 = R3

(SORTEND)

// a partir daqui, R0 < R1 < R2
@R0
D=M
@R1
D=D+M     // D = R0 + R1

@R2
D=D-M     // D = (R0 + R1) - R2

@NOTTRIANGLE
D;JLE     // if (R0 + R1 <= R2) goto NOTTRIANGLE

  // if (R0 + R1 > R2) 
  @R4
  M=1
  @END
  0;JMP

(NOTTRIANGLE)
@R4
M=0

(END)
@END
0;JMP