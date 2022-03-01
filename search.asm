CLR C
CLR A
MOV R0, #020H
MOV R1, #00Ah
MOV R2, #00H
MOV R3, #00H

loop:MOV A, #037H
	 SUBB A, @R0
	 JC greater
	 JNZ smaller
	 MOV 40H, R0
	 DJNZ R1, loop

smaller:INC R0
		INC R2
		MOV 45H, R2
	    DJNZ R1, loop

greater:INC R0
	    INC R3
		MOV 46H, R3
        DJNZ R1, loop
		END
