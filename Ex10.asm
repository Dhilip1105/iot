ORG 0000H

MOV P1, #00H      ; Clear Port 1

LOOP:
MOV P1, #0FFH     ; Turn ON all LEDs
ACALL DELAY

MOV P1, #00H      ; Turn OFF all LEDs
ACALL DELAY

SJMP LOOP

DELAY:
MOV R3, #255
D1: MOV R4, #255
D2: DJNZ R4, D2
DJNZ R3, D1
RET

END