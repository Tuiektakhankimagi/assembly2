LXI H, 4000H    ; Load starting memory address for storing odd numbers
MVI B, 01H      ; Initialize counter with 1
LDA 2000H       ; Load specified limit from memory location 2000H
MOV C, A        ; Move the limit to register C

LOOP:MOV A, B        ; Move counter value to accumulator
MOV M, A        ; Store odd number in memory (address in HL)
INX H           ; Increment memory pointer
INR B           ; Increment counter by 1
INR B           ; Increment again to get the next odd number
MOV A, B        ; Move the counter value to the accumulator
CMP C           ; Compare the counter with the limit
JC LOOP         ; Jump to LOOP if counter < limit
HLT             ; Halt the program