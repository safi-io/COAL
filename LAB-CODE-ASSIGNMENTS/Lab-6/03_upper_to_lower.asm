; Upper to Lower

[org 0x0100]

section .data
    charArray db 'HELLO WORLD$', 0

section .text
    mov si, charArray   

; upper to lower differnce is 
; A = 41 H (0100 0001)
; a = 61 h (0110 0001)
; 20 =      0010 0000


convert_loop:
    mov al, [si]      
    cmp al, '$'    
    je done    

    or al, 0x20    
    mov [si], al

    inc si            
    jmp convert_loop 

done:
    mov dx, charArray
    mov ah, 09h       
    int 0x21          

    mov ax, 0x4c00
    int 0x21
