[org 0x0100]
; program to add three numbers using fixed address

xor ax, ax     ; reset accumulator
mov cx, 3      ; counter variable
mov bx , 0     ; setting base

outerloop:
    mov ax, [num1 + bx]
    add [result], ax

    add bx, 2

    sub cx, 1 
    jnz outerloop

; exit statement
mov ax, 0x4c00
int 0x21

; global variables
num1: dw 5, 10,15
result: dw 0 