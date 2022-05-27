MOV A, 20H
MOV B, #64H
DIV AB ; A=00, B=29

MOV 21H, A
MOV A, B
MOV B, #0AH
DIV AB ; A=02, B=09

SWAP A ; A=20
ADD A, B ; A=29
MOV 22H, A
ACALL convert
jmp $

convert: MOV A, 22H ; A=29
		 MOV R5, A
		 ANL A, #0F0H ; A=20
		 SWAP A ; A=02
		 MOV R1, A
		 MOV A, R5 ; A=29
		 ANL A, #0FH ; A=09
		 MOV R2, A

		 MOV A, R1 ; A=02
		 MOV B, #0AH
		 MUL AB ; A=20
		 ADD A, R2; A=29
		 MOV 24H, A
		 RET
