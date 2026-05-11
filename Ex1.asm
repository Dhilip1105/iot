ORG 0000H

MOV A, #25H      ; Load first number into A
MOV R0, #15H     ; Load second number into R0

; Addition
ADD A, R0        ; A = 25H + 15H
MOV R1, A        ; Store addition result in R1

; Subtraction
MOV A, #25H      ; Reload first number
SUBB A, R0       ; A = 25H - 15H
MOV R2, A        ; Store subtraction result in R2

END