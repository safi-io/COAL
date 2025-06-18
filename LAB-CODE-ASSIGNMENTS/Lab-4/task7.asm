[org 0x100]

mov ax, 2
mov bl, 5

div bl

mov ax, 0x4c00
int 0x21