ORG 0000H

MOV R0, #30H     ; Starting address of array
MOV R2, #05H     ; Number of elements

MOV A, @R0       ; First number as maximum
INC R0
DEC R2

LOOP:
MOV B, @R0
CJNE A, B, CHECK

CHECK:
JNC NEXT         ; If A > B, keep A
MOV A, B         ; Else move new maximum to A

NEXT:
INC R0
DJNZ R2, LOOP

MOV R1, A        ; Store maximum number in R1

END