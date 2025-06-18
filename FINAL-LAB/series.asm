org 100h

section .text
    mov cx, 13
    mov ax, 130      
    mov bx, 0

start_loop:
    add bx, ax
    sub ax, 10
    loop start_loop