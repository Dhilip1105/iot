ORG 0000H

MOV A, #55H      ; First number
MOV R0, #0FH     ; Second number

; AND Operation
ANL A, R0
MOV R1, A        ; Store AND result in R1

; OR Operation
MOV A, #55H
ORL A, R0
MOV R2, A        ; Store OR result in R2

; XOR Operation
MOV A, #55H
XRL A, R0
MOV R3, A        ; Store XOR result in R3

END