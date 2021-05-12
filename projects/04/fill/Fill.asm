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

// Pseudocódigo
// screen_end = SCREEN + 8192 # 8192 = (512*256/WORD_SIZE)
// LISTENER:
//   if KBD == 0:
//     color = 0  # white
//   else:
//     color = -1   # black
//
//   goto PAINT
// 
// PAINT:
//   pixels = SCREEN
//   PAINT_LOOP:
//     Mem[pixels] = color
//     pixels++
//     if pixels >= screen_end goto LISTENER
//     goto PAINT_LOOP

@8192
D=A
@SCREEN
D=D+A
@screen_end
M=D                        // screen_end = SCREEN + 8192

(LISTENER)
  @KBD
  D=M
  @IF_COLOR_BLACK
  D;JNE
  (IF_COLOR_WHITE)         // if KBD == 0:
    @color
    M=0                    // color = 0
    @IF_COLOR_END
    0;JMP
  (IF_COLOR_BLACK)         // else:
    @color
    M=-1                   // color = -1
  (IF_COLOR_END)

  @PAINT
  0;JMP

  @LISTENER
  0;JMP                    // goto LISTENER



(PAINT)
  @SCREEN
  D=A
  @pixels
  M=D                      // pixels = SCREEN
  
  (PAINT_LOOP)
    @color
    D=M
    @pixels
    A=M
    M=D                    // Mem[pixels] = color

    @pixels
    M=M+1                  // pixels++

    @pixels
    D=M
    @screen_end
    D=D-M
    @LISTENER
    D;JGE                  // if pixels >= screen_end goto LISTENER 
     
    @PAINT_LOOP
    0;JMP                  // goto PAINT_LOOP
