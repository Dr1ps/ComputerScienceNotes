.start
@ ==================================================
@ Scrivere il codice Assembly per un main che stampa
@ la stringa "ciao" utilizzando la funzione printf.
@ ==================================================
.data
    str: .asciz "ciao"
.text
.global main

main:
    PUSH{R4,LR}
    LDR R0, =str
    BL printf
    MOV R0, #0
    POP{R4,PC}
