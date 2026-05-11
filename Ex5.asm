ORG 0000H

MOV R2, #04H        ; Outer loop count

OUTER:
MOV R0, #30H        ; Starting address
MOV R3, #04H        ; Inner loop count

INNER:
MOV A, @R0
INC R0
MOV B, @R0

CJNE A, B, CHECK
SJMP NEXT

CHECK:
JC NEXT             ; If A < B, no swap

; Swap numbers
MOV @R0, A
DEC R0
MOV @R0, B
INC R0

NEXT:
DJNZ R3, INNER
DJNZ R2, OUTER

END