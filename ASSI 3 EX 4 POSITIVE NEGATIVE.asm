LXI H, 6000H   ; Load immediate value 6000H into HL register pair
MOV C, M       ; Move the value at memory location pointed by HL to register C
MVI B, 00H     ; Move immediate value 00H to register B
MVI E, 00H     ; Move immediate value 00H to register E

LOOP3: INX H   ; Increment HL register pair
MOV A, M       ; Move the value at memory location pointed by HL to accumulator A
ADI 00H        ; Add immediate value 00H to accumulator A (no effect)
JZ LOOP2       ; Jump to LOOP2 if result is zero
INR E          ; Increment register E
JMP LOOP3      ; Jump to LOOP3

LOOP2: INR B   ; Increment register B

LOOP4: DCR C   ; Decrement register C
JNZ LOOP3      ; Jump to LOOP3 if the result is not zero

MOV A, E       ; Move the value of register E to accumulator A
STA 7001H      ; Store the value of accumulator A at memory location 7001H
MOV A, B       ; Move the value of register B to accumulator A
STA 7002H      ; Store the value of accumulator A at memory location 7002H
HLT            ; Halt the program
