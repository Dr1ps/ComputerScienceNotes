.start 

@ ==================================================
@ Scrivere una funzione:
@
@ char * creacopia(char *s)
@
@ La funzione riceve come parametro una stringa
@ e restituisce un puntatore a una sua copia.
@
@ La copia deve essere identica alla stringa originale.
@
@ Per creare la copia, la funzione deve:
@ - Calcolare la lunghezza della stringa.
@ - Allocare lo spazio necessario utilizzando malloc.
@ - Copiare tutti i caratteri della stringa originale
@   nella nuova area di memoria allocata.
@ - Copiare anche il terminatore '\0'
@ - Restituire l'indirizzo della nuova stringa.
@
@ ==================================================

.text
.global creacopia

creacopia:
    PUSH{R4,LR}
    MOV R1, #0                  @ Inizializzo contatore
    MOV R3, R0
loopCaratteri:
    LDRB R2, [R3], #1           @ Carico un carattere
    CMP R2, #0                  @ Controllo se è il terminatore
    ADD R1, R1, #1              @ Counter ++
    BEQ fineLoop                @ Esci se è vero
    B loopCaratteri                      @ Iterazione
fineLoop:
    MOV R0, R1                  @ R0 = bit da allocare (R1)
    BL malloc                   @ R0 = indirizzo di memoria
    STR R0, R3                  @ [R0] = stringa (con tanto di terminatore nullo)
    POP{R4, PC}

