[org 0x0100]

section .data
    A db 10
    Result db 0

section .text
    main:
        mov al, [A]
        inc al
        neg al
        mov [Result], al

        mov ax, 0x4C00
        int 0x21
