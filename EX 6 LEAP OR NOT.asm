EX 6
LEAP OR NOT

LDA 2500H
RAR
JC LOOP
RAR
JC LOOP
MVI A,02H
STA 2501H
HLT
LOOP:MVI A,01H
STA 2501H
HLT