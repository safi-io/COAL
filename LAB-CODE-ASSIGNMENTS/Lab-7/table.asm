org 100h

mov cx, 10        ; Repeat 10 times
mov bl, 1         ; Start multiplier (1 to 10)

start_loop:
    mov al, 2     ; Multiplicand
    mul bl        ; AL = 2 * BL (result in AL)

    add al, '0'   ; Convert result to ASCII (works for 1-digit results only)
    mov dl, al
    mov ah, 02h
    int 21h       ; Print result

    mov dl, 13    ; New line (CR)
    int 21h
    mov dl, 10    ; New line (LF)
    int 21h

    inc bl
    loop start_loop

mov ah, 4Ch       ; Exit
int 21h
