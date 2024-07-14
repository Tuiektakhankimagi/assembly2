EX 3
ODD OR EVEN

LDA 0000H     ; Load the accumulator with the value from memory location 0000H
RAR           ; Rotate accumulator right through carry
JC LOOP       ; Jump to LOOP if carry is set
MVI A, 22H    ; Move immediate value 22H to the accumulator
STA 0001H     ; Store the value of the accumulator at memory location 0001H
HLT           ; Halt the program

LOOP: MVI A, 33H  ; Move immediate value 33H to the accumulator
STA 0002H         ; Store the value of the accumulator at memory location 0002H
HLT               ; Halt the program
