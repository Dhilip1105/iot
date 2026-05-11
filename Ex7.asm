ORG 0000H

MOV R0, #30H     ; Starting address
MOV R2, #08H     ; Count = 8 numbers

MOV A, #00H      ; Clear accumulator

LOOP:
ADD A, @R0       ; Add data value
INC R0
DJNZ R2, LOOP

MOV B, #08H
DIV AB            ; A = Average

MOV R1, A         ; Store average in R1

END