[org 0x0100]

section .data
    numbers db 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    db 0x20           
    db 0xFF           

section .text
    mov bx, numbers          
    mov al, [bx + 9]     
    mov ah, [bx + 10]    

    mov [bx + 9], ah
    mov [bx + 10], al

    mov ax, 0x4c00     
    int 0x21

