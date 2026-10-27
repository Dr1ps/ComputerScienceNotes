.global _start
.text

_start:
    MOV R0, #1
    MOV R1, #5
    ADD R2, R1, R0      @ R2 = 6

    CMP R0, #0          @ Confronta R0 con 0
    BEQ true            @ Se R0 = 0, salta a true

    MOV R3, #0          @ Se R0 != 0, R3 = 0
    B end               @ Salta alla fine

true:
    MOV R3, #1          @ Se R0 = 0, R3 = 1

end: