[org 0x100]

; bx = (ax-bx) * (bx+10)

mov ax, 0x0020
mov bx, 0x0010

sub ax, bx
add bx, 10
mul bx

mov ax, 0x4c00
int 0x21

result: dw 0