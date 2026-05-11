ORG 0000H

MOV R0, #30H     ; Source address
MOV R1, #40H     ; Destination address
MOV R2, #05H     ; Number of bytes

LOOP:
MOV A, @R0       ; Read data from source
MOV @R1, A       ; Store data to destination

INC R0           ; Next source location
INC R1           ; Next destination location

DJNZ R2, LOOP    ; Repeat until 5 bytes copied

END