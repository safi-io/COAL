[org 0x0100]

section .data
    A dw 0x7F
    B dw 273

section .text
    mov ax, [A]
    mov bx, [B]

    sub ax, 5
    add bx, 3
    mul bx
    mov [A], ax

mov ax, 0x4c00
int 0x21