load Triangulo.asm,
output-file Triangulo.out,
// compare-to Triangulo.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[4]%D2.6.2;

set RAM[0] 0,  
set RAM[1] 0,
set RAM[2] 0;
repeat 70 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 10,  
set RAM[1] 2,
set RAM[2] 2;
repeat 70 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 2,  
set RAM[1] 10,
set RAM[2] 2;
repeat 70 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 2,  
set RAM[1] 2,
set RAM[2] 10;
repeat 70 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 3,  
set RAM[1] 4,
set RAM[2] 5;
repeat 70 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 4,  
set RAM[1] 3,
set RAM[2] 5;
repeat 70 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 5,  
set RAM[1] 4,
set RAM[2] 3;
repeat 70 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 5,  
set RAM[1] 3,
set RAM[2] 4;
repeat 70 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 5,  
set RAM[1] 5,
set RAM[2] 10;
repeat 70 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 5,  
set RAM[1] 10,
set RAM[2] 5;
repeat 70 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 10,  
set RAM[1] 5,
set RAM[2] 5;
repeat 70 {
  ticktock;
}
output;

