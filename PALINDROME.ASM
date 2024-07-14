LHLD 2050H       ; Load HL pair with the 16-bit number at 2050H (L) and 2051H (H)
MOV A, L         ; Move lower byte to accumulator
RLC              ; Rotate accumulator left
RLC              ; Rotate accumulator left
RLC              ; Rotate accumulator left
RLC              ; Rotate accumulator left
MOV L, A         ; Store rotated value back in L
MOV A, H         ; Move higher byte to accumulator
RRC              ; Rotate accumulator right
RRC              ; Rotate accumulator right
RRC              ; Rotate accumulator right
RRC              ; Rotate accumulator right
MOV H, A         ; Store rotated value back in H
MOV A, L         ; Move the modified lower byte to accumulator
CMP H            ; Compare it with the modified higher byte
JZ PALINDROME    ; If they are equal, it is a palindrome
MVI A, FFH       
STA 2070H        
HLT             
PALINDROME:MVI A, 01H       
STA 2070H        
HLT
