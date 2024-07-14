LXI H, 2501H    ; Load HL pair with the memory address 2501H (pointing to the first byte)
MOV A, M        ; Move the byte at memory location 2501H to accumulator A

LXI H, 2502H    ; Load HL pair with the memory address 2502H (pointing to the second byte)
MOV B, M        ; Move the byte at memory location 2502H to register B

CMP B           ; Compare the byte in accumulator A with the byte in register B
JC LOOP         ; Jump to LOOP if the byte in A is less than the byte in B

MOV A, B        ; Move the byte in B to accumulator A (if not jumped)

LOOP:STA 2503H       ; Store the byte in accumulator A to memory location 2503H

HLT             ; Halt the program
