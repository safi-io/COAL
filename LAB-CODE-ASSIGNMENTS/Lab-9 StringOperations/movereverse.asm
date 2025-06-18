org 100h

section .data
src db 'Hello World$'
dest times 12 db 0
section .text
start:

    mov cx, 11
    lea si, [src + 10] 
    lea di, [dest]               

reverse_loop:

    mov al, [si]  ; Load character from source into AL
    mov [di], al ; Store character in destination
    dec si    ; Move to the previous character in source
    inc di
    loop reverse_loop

    mov byte [di], '$' ; Adding String Terminator               

    mov ah, 09h
    lea dx, [dest]           
    int 21h      

    mov ah, 4Ch
    int 21h