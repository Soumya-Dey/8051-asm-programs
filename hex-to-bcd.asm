; divide with 100 or 64H(DIV AB)
; move the quotient to a memory location
; move the remainder(B) to A
; divide with 10 or OAH
; swap the digits of quotient(A)
; add A with the remainder(B)

MOV A, 20H
MOV B, #64H
DIV AB
MOV 21H, A
MOV A, B
MOV B, #0AH
DIV AB
SWAP A
ADD A, B
MOV 22H, A
jmp $