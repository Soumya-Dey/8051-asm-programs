MOV A, #02H
MOV R0, #02H
MOV R1, A

loop: MOV B, R1
	  MUL AB
	  DJNZ R0, loop
END