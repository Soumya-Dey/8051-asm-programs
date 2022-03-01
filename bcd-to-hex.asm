convert 3digit BCD to hex:-

R0 - first half
R1 - second half
R2 - ans lsb
R3 - ans msb

------------------------------------------
MOV R0, #04H
MOV R1, #98H

MOV A, R1
ANL A, #0FH
MOV R2, A

MOV A,R1
ANL A, #F0H
RR A
RR A
RR A
RR A
MOV B, #0AH
MUL AB
ADD A, R2
MOV R2, A
JNC lblone
MOV R3, #01H

lblone:
MOV A, R0
ANL A, #0FH
MOV B, #64H
MUL AB
ADD R2 			
MOV R2, A
MOV A, R3
jnc lbl2:
ADD A, #01H
lbl2:
ADD A, B
MOV R3, A