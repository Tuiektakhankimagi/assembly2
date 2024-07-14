MVI B, 04H      ; Load immediate value 04H into register B (factorial number)
MVI D, 01H      ; Load immediate value 01H into register D (initial factorial value)

FACT:           ; Factorial calculation subroutine starts here
CALL MULT       ; Call the MULT subroutine to perform multiplication
DCR B           ; Decrement B (factorial number)
JNZ FACT        ; Jump to FACT if B is not zero (continue factorial calculation)

LXI H, 0000H    ; Load HL pair with the memory address 0000H (target memory location)
MOV M, D        ; Move the contents of D (final factorial value) to the memory location pointed by HL
HLT             ; Halt the program

MULT:           ; Multiplication subroutine starts here
MOVE E, B       ; Move the value of B to register E (store the original value of B)
MVI A, 00H      ; Load immediate value 00H into accumulator A (initialize accumulator)

LOOP:           ; Multiplication loop starts here
ADD D           ; Add the value in D (current factorial value) to accumulator A
DCR E           ; Decrement E (factorial number)
MOV D, A        ; Move the contents of accumulator A to D (update factorial value)
RET             ; Return from subroutine
