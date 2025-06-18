[org 0x0100]

; Un-Signed Multplication of Words

mov ax, 0XFFFF
mov bx, 0xFFFE
mul bx

; Un-Signed Multiplication of Bytes

mov al, 0AAh
mov bh, 0BBh
mul bh ; al is fixed

; Signed Multplication of Words

mov ax, 0xFFFF
mov bx, 0xEEEE
imul bx

; Signed Mulutplication of Bytes

mov al, 0FFh
mov bh, 0BBH
imul bh

mov ax, 0x4c00
int 0x21