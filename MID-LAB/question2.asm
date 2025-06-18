    [org 0x0100]

    section .data
        charArray db 'SAFI$'

    section .text
        mov si, charArray   

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
