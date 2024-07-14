    MVI A, 05H
    JMP LOOP
    DCR A
    LOOP:STA 0000H
    HLT