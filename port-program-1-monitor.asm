; Write a program to monitor bit P1.7.
; If it is high, write FFH to P0;
; otherwise, write 00H to P0.

SETB P1.7

LOOP: MOV C, P1.7
	  JC GO
	  MOV P0, #000H
	  SJMP AGAIN

GO: MOV P0, #0FFH

AGAIN: SJMP LOOP
END