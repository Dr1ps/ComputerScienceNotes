.start

@ ==================================================
@ Esercizio 2:
@
@ Scrivere il codice della funzione:
@
@ int strlen(char *s)
@
@ La funzione calcola la lunghezza di una stringa
@ null terminated, il cui indirizzo viene passato
@ come parametro.
@
@ ==================================================

.data

.text

.global strlen

strlen:
    MOV R1, #0
loop:
    LDR R2, [R0], #1
    CMP R2, #0
    BEQ fine
    ADD R1, R1, #1
    B loop
fine:
    MOV R0, R1
    MOV PC, LR
    