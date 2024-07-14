LXI H, 2000H 
MOV B, M     
MVI A, 00H   
INX H         
MOV C, M     

LOOP2: ADD B 
DCR C        
JNZ LOOP2    

STA 2005H    
HLT          
