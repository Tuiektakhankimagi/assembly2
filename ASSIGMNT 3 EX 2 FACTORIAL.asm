; Program to calculate factorial of a number stored in B register
; Result will be stored in register D

; Initialize the number and result
MVI B, 04H      ; Load immediate value 04H into register B (factorial number)
MVI D, 01H      ; Load immediate value 01H into register D (initial factorial value)

; Main loop to calculate factorial
FACT:   CALL MULT   ; Call the MULT subroutine to perform multiplication
        DCR B       ; Decrement B (factorial number)
        JNZ FACT    ; Jump to FACT if B is not zero (continue factorial calculation)

        ; Store the result in memory location 0000H
        LXI H, 0000H ; Load HL pair with the memory address 0000H (target memory location)
        MOV M, D    ; Move the contents of D (final factorial value) to the memory location pointed by HL
        HLT         ; Halt the program

; Subroutine to multiply D with B, result in D
MULT:   MOV E, B     ; Move the value of B to register E
        MVI A, 00H   ; Clear A (initialize accumulator)

LOOP:   ADD D        ; Add the value in D (current factorial value) to A
        DCR E        ; Decrement E
        JNZ LOOP     ; Jump to LOOP if E is not zero (continue addition)
        MOV D, A     ; Move the contents of A to D (update factorial value)
        RET          ; Return from subroutine
