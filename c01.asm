[org 0x0100]

; start of code

mov ax, 50
mov bx, 20

add ax, bx

mov bx, 25
add ax, bx

mov ax, 0x4c00
int 0x21