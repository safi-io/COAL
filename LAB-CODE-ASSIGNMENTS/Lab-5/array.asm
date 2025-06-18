[org 0x0100]

section .data
    numbers db 10, 20, 30, 40, 50

section .text
    main:
        mov al, [numbers]     
        mov bl, [numbers + 1]  
        mov cl, [numbers + 2] 
        mov dl, [numbers + 3]  
        mov ah, [numbers + 4] 

        mov ax, 0x4c00
        int 0x21
