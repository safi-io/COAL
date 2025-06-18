org 100h

start:
    mov ax, 0      
    mov bl, 254    
    mov dl, 32     

repeat_add:
    add ax, dx   
    dec bl          
    jnz repeat_add  

    mov ah, 4Ch
    int 21h
