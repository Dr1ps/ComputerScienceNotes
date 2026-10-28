.global _start
_start:
    
    @ Pulizia registri
    mov r0,#0 
    mov r1,#0

    @ caricamento dei valori della word statica (in fondo)
    ldr r2,=v

    @ salva in R3 il valore "4"
    mov r3,#4

@ Inizia un loop con guardia r1 == r3
loop: cmp r1,r3
    @ Guardia
    beq fine
    ldr r4,[r2, r1, lsl #2]
    add r0, r0, r4
    add r1,r1,#1
    b loop

fine:
    ldr r1,=v
    ldr r0,[r1],#4
    ldr r2,[r1],#4
    add r0,r0,r2
    ldr r2,[r1],#4
    add r0,r0,r2
    ldr r2,[r1]
    add r0,r0,r2
    ldr r0,=s
    mov r1, #72
    strb r1, [r0]
    .data

s: .string "hello world"
v: .word 18,30,24,26