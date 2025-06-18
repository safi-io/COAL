org 100h

start:
    mov dx, msg
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h

    cmp al, '0'
    je is_zero
    cmp al, '1'
    je is_one
    jmp invalid_input

is_zero:
    mov ax, 0
    jmp display_result

is_one:
    mov ax, 16

display_result:
    mov bx, 10
    xor cx, cx 
store_digits:
    xor dx, dx
    div bx         
    push dx       
    inc cx
    test ax, ax
    jnz store_digits

print_digits:
    pop dx
    add dl, '0'
    mov ah, 02h
    int 21h
    loop print_digits

    mov ah, 4Ch
    int 21h

invalid_input:
    mov dx, err
    mov ah, 09h
    int 21h

    mov ah, 4Ch
    int 21h

msg db 'Enter 0 or 1: $'
err db 13, 10, 'Invalid input! Only 0 or 1 allowed.$'
