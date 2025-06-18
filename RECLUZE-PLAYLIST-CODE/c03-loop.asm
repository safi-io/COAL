[org 0x0100]

xor ax, ax      ; reset the accumalator
mov cx, 6       ; iterator
mov bx, num1    ; set the Base

outerloop:
    add ax, [bx]
    add bx, 2

    sub cx, 1
    jnz outerloop ; jump if not zero

mov [result], ax

mov ax, 0x4c00
int 0x21

num1: dw 5,5,5,5,5,5
result: dw 0