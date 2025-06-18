[org 0x0100]

; study segementation, data regisotrs (ds:ip) etc

section .data
    A db 80h
    B db 20h
    C db 0

section .text
    main:
        call add_numbers
        mov ax, 0x4c00
        int 0x21

    
    add_numbers:
        mov al, [A]
        add al, [B]
        mov [C], al    
        ret           