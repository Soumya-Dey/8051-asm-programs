MOV R1, #00H ; count for odd numbers
MOV R2, #00H ; count of even numbers
MOV R4, #0AH ; size of array, 64H (100) bytes
MOV R0, #020H ; pointer to starting address of array

NEXT: MOV A, @R0 ; read byte from array
	  RRC A ; move LSB into carry
	  JC ODD ; number is odd if MSB is 1
	  MOV A, R2
	  ADD A, @R0 ; otherwise even
	  MOV R2, A
	  SJMP SKIP

ODD: MOV A, R1
	 ADD A, @R0
	 MOV R1, A

SKIP: INC R0 ; point to next array element
	  DJNZ R4, NEXT ; check next element of array

HERE: SJMP HERE ; stop when all elements are checked

END