MOV R0, #27H
MOV R1, #89H
MOV R6, #00H   

; here, adding the lower nibble of the two numbers
MOV A, R0
ANL A, #0FH
MOV R7, A
MOV A, R1
ANL A, #0FH
ADD A,R7


; adjustment process
SUBB A, #09h
JC next
ADD A, #09H
ADD A, #06H
SUBB A, #10H
MOV R6, #01H
MOV R2, A

; here, adding the upper nibble of the two numbers
next: MOV A, R0
	  ANL A, #0F0H
	  SWAP A
	  MOV R7, A
	  MOV A, R1
	  ANL A, #0F0H
	  SWAP A
	  ADD A, R7 
	  ADD A, R6	; carry from previous stage


; now adjusting again
SUBB A, #09h
JC finish
ADD A, #09H
ADD A, #06H
SUBB A, #10H
MOV R3, #01H
SWAP A
ORL A, R2
MOV R2, A

finish: SJMP finish