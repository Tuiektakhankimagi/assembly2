MVI A, 25H      ; Load immediate value 25H into register A
MVI B, 1AH      ; Load immediate value 1AH into register B
ADD B           ; Add the value in register B to register A
STA 3000H       ; Store the contents of register A to memory address 3000H
HLT             ; Halt the program
