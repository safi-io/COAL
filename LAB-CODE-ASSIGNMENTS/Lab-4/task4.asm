[org 0x100]

mov ax, 0X0007
mov bx, 0x0005

mul bx
sub ax, 7

mov ax, 0x4c00
int 0x21