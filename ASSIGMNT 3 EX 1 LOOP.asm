MVI A, 01H      ; Load immediate value 01H into accumulator A
MVI B, 01H      ; Load immediate value 01H into register B
MVI C, 08H      ; Load immediate value 08H into register C

LXI D, 2201H    ; Load HL pair with the memory address 2201H (pointing to destination)

LOOP:
STAX D          ; Store the contents of accumulator A at the memory location pointed by HL (2201H)
INX D           ; Increment HL pair to point to the next memory location
DCR C           ; Decrement register C
JNZ LOOP        ; Jump to LOOP if C is not zero (repeat the loop)

HLT             ; Halt the program
