MOV R0, #10H
MOV R4, #0AH
MOV R5, #00H
MOV R6, #00H

next: ADD A, @R0
	  DA A
	  JNC skip
	  INC R5

skip: INC R0
	  DJNZ R4, next

MOV R6, A
jmp $