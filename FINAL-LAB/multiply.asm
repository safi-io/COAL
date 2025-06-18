org 100h

start:
    mov ax, 0 
    mov cx, 8 

    mov bl, 0feh ; 254
    mov dl, 20h   ; 32

multiply_loop:
    test bl, 1       
    jz skip_add  

    add ax, dx        

skip_add:
    shr bl, 1 
    shl dx, 1 
    loop multiply_loop 

    mov ah, 4Ch
    int 21h
