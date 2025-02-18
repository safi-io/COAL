; a program to add three numbers using byte variables
[org 0x0100]


xor cx, cx ; cx must be empty

mov al, [num1]
mov bl, [num1+1]
mov cl, [num1+2]

add al, bl
add al, cl

mov ah, 0
mov[result], ax


mov ax, 0x4c00
int 0x21

num1: db 5,10,15
result: dw 0
