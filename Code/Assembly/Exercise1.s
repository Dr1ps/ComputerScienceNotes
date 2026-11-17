.start
@ Scrivere due funzioni:
@
@ int conv(char c)
@ Converte un carattere esadecimale
@ {0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f}
@ nel suo corrispondente valore decimale.
@
@ int convstring(char *s)
@ Converte una stringa contenente esclusivamente
@ caratteri esadecimali nel corrispondente
@ valore numerico decimale.
@
@ Esempi:
@ conv('a') deve restituire 10
@ conv('8') deve restituire 8
@ convstring("28") deve restituire 40
@ convstring("1000f") deve restituire 65551

.data
    string: .asciz "28"

.text
.global conv, convstring 

conv: 
    CMP R0, #57          @ ASCII 57 è la cifra "9"
    SUBLE R0, R0, #48     @ Se <=57 allora è cifra
    SUBGT R0, R0, #87     @ Se > 57 è lettera
    MOV PC, LR            @ Return


BL convstring
convstring: 
    PUSH{LR}
    LDR R1, =string
    MOV R2, #0
loop:
    LDRB R0, [R1], #1
    CMP R0, #0
    BEQ fine
    BL conv
    LSL R2, R2, #4
    ADD R2, R2, R0
    B loop
fine:
    MOV R0, R2
    POP{PC}