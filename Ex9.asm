ORG 0000H

MOV A, #25H       ; Load data into accumulator
MOV R1, A         ; Transfer data from A to R1

MOV 30H, R1       ; Store R1 data into memory location 30H

MOV A, 30H        ; Read data from memory
MOV R2, A         ; Transfer memory data to R2

END