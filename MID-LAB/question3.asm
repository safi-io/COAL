[org 0x0100]

section .data
    charArray db 'SAFI$'

section .text
    mov si, charArray

to_uppercase:
    mov al, [si]
    cmp al, '$'  
    je print_string    

    add al, 32    
    mov [si], al     

    inc si          
    jmp to_uppercase   

print_string:
    mov dx, charArray
    mov ah, 09h 
    int 0x21            

    mov ax, 0x4c00
    int 0x21
