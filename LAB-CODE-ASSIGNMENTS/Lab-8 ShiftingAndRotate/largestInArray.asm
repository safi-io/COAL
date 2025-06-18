org 100h

section .data
array db 5, 9, 2, 7, 3
length equ 5

section .text
start:
    mov cx, length      ; Counter for loop
    lea si, [array]     ; Point to first element
    mov al, [si]        ; Assume first is largest
    inc si              ; Move to second element
    dec cx              ; Already checked one

find_max:
    cmp al, [si]        ; Compare current max (AL) with next
    jae skip            ; If AL >= [SI], skip
    mov al, [si]        ; Else, new max → AL

skip:
    inc si              ; Next element
    loop find_max       ; Repeat

    ; AL holds the largest value now
    add al, '0'         ; Convert to ASCII (if values are <10)
    mov dl, al
    mov ah, 02h
    int 21h

    ; Exit
    mov ah, 4Ch
    int 21h
