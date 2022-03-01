; bit addressable
SETB PSW.4 ;accessing bank 2
MOV R2, #84H
MOV A, R2

; byte addressable
MOV PSW, #10H ;accessing bank 2
MOV R2, #44H
MOV A, R2
