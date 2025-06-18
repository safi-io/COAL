[org 0x0100]

mov ax, 0xFFFF
mov bx, 0xFFFF
mul bx

mov ax, 0xFFFF
mov bx, 0xFFFF
imul bx

mov [result], ax

mov ax, 0x4c00
int 0x21

result: dw 0