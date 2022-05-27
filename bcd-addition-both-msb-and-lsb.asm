MOV A, 20H
ADD A, 21H
MOV R5, A

MOV A, 20H
ANL A, #0FH
MOV R3, A
MOV A, 21H
ANL A, #0FH
ADD A, R3
SUBB A, #09H
JZ next
JC next
MOV R1, A ; auxiliary carry
MOV A, R5
ADD A, #06H
MOV R5, A
MOV 30H, R5

next: MOV A, 20H
	  ANL A, #0F0H
	  SWAP A
	  MOV R3, A
	  MOV A, 21H
	  ANL A, #0F0H
	  SWAP A
	  ADD A, R3
	  SUBB A, #09H
	  JZ done
	  JC done
	  MOV R0, A ; carry
	  MOV A, R5
	  ADD A, #060H
	  MOV R5, A
	  MOV 30H, R5
	  jmp $

done: MOV 30H, R5
