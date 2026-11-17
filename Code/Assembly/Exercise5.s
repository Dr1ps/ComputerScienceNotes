.start
@ ==================================================
@ Scrivere una funzione:
@
@ int cercabin(int *vec, int n, int x)
@
@ La funzione riceve:
@ - R0: indirizzo del vettore ordinato (vec)
@ - R1: numero di elementi del vettore (n)
@ - R2: valore da cercare (x)
@
@ La funzione deve eseguire una ricerca binaria
@ all'interno del vettore vec.
@
@ La ricerca deve:
@ - Considerare il vettore ordinato.
@ - Individuare l'elemento centrale del vettore.
@ - Confrontare l'elemento centrale con x.
@ - Se è uguale a x, terminare la ricerca.
@ - Se x è minore, continuare nella metà sinistra.
@ - Se x è maggiore, continuare nella metà destra.
@ - Ripetere il procedimento fino a trovare x
@   oppure fino a esaurire gli elementi da controllare.
@
@ La funzione deve restituire:
@ - L'indice dell'elemento trovato, se presente.
@ - -1 se x non è presente nel vettore.
@
@ Il valore restituito deve essere inserito in R0.
@
@ ==================================================

.data

.text
.global cercabin

cercabin:
    @ R0 = vettore
    @ R1 = n
    @ R2 = x (da trovare)

loopCerca:
    LDR R3, [R0]
    CMP R3

