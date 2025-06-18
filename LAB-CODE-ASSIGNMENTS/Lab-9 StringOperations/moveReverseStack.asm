org 100h

section .data
src  db 'Hello World$'
dest times 12 db 0          ; 11 characters + 1 for '$'

section .text
start:
    mov cx, 11              ; Length of "Hello World" (exclude '$')
    lea si, [src]           ; Point to start of src

push_loop:
    mov al, [si]
    push ax                 ; Push character onto stack
    inc si                  ; Move to next character
    loop push_loop

    mov cx, 11
    lea di, [dest]          ; Destination buffer

pop_loop:
    pop ax
    mov [di], al            ; Pop character into dest
    inc di
    loop pop_loop

    mov byte [di], '$'      ; Terminate string

    mov ah, 09h
    lea dx, [dest]
    int 21h                 ; Print reversed string

    mov ax, 4C00h
    int 21h                 ; Exit
