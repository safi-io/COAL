[org 0x0100]

mov ax, 1
mov bx, 0xFFFF
mul bx
mov [result], ax

mov ax, 1
mov bx, 0xFFFF
imul bx
mov [result + 2], ax
mov [result + 4], dx

; DX will be empty (no upper bits)

mov ax, 0x4c00
int 0x21

result: dw 0