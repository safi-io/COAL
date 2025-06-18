org 100h

section .data
print_msg db 'Enter a digit: $'
even_msg db 'Even$',0
odd_msg  db 'Odd$',0

section .text
start:
    mov dx, print_msg
    mov ah, 9
    int 21h
    
    ; Read one char
    mov ah, 1
    int 21h
    sub al, '0'        ; convert ASCII to number
    cmp al, 9
    ja invalid_input   ; if not digit, exit

    test al, 1         ; check LSB
    jz print_even

print_odd:
    mov dx, odd_msg
    jmp print_str

print_even:
    mov dx, even_msg

print_str:
    mov ah, 9
    int 21h

    mov ah, 4Ch
    int 21h

invalid_input:
    mov ah, 4Ch
    int 21h
