org 100h

section .data
src db 'Hello World$'
dest times 12 db 0

section .text
start:
    lea si, [src]       
    lea di, [dest]      

    mov cx, 12  
    cld                 
    rep movsb   

    mov ah, 09h
    lea dx, [dest]
    int 21h

    mov ah, 4Ch
    int 21h