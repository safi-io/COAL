org 100h

section .data
src  db 'Hello World$'
dest times 12 db 0

section .text
start:
    mov cx, 11            ; Number of characters to reverse

    lea si, [src + 10]    ; Point to last character (before '$')
    lea di, [dest]        ; Destination buffer

    std                   ; Set direction flag (process backwards)

reverse_loop:
    lodsb                 ; Load byte from [SI] into AL and DEC SI
    stosb                 ; Store byte from AL into [DI] and INC/DEC DI
    loop reverse_loop

    cld                   ; Clear direction flag (important before string ops)

    mov byte [di], '$'    ; Null terminator

    mov ah, 09h
    lea dx, [dest]
    int 21h

    mov ah, 4Ch
    int 21h
