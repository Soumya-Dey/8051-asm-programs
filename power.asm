MOV A, #02H
MOV R2, A
MOV R3, A
MOV R0, #03H

loop: MOV A, R2
	  MOV B, R3
	  MUL AB
	  MOV R2, A
	  DJNZ R0, loop
END