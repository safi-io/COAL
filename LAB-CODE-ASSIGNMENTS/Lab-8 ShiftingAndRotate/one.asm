[org 100h]

start:
    mov bx, 5

    mov ax, bx
    shl ax, 2

    mov cx, bx
    shl cx, 1

    add ax, cx
    
    mov ah, 4Ch
    int 21h
