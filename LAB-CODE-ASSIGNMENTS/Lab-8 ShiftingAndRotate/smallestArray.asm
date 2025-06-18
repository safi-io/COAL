org 100h

section .data
array db 8, 4, 6, 9, 3
length equ 5

section .text
start:
    mov cx, length
    lea si, [array]
    mov al, [si]        ; First element as smallest
    inc si
    dec cx

find_min:
    cmp al, [si]        ; Compare current min (AL) with [SI]
    jbe skip2           ; If AL <= [SI], keep it
    mov al, [si]        ; Else, new min → AL

skip2:
    inc si
    loop find_min

    ; AL holds the smallest value
    add al, '0'         ; Convert to ASCII (if <10)
    mov dl, al
    mov ah, 02h
    int 21h

    ; Exit
    mov ah, 4Ch
    int 21h
