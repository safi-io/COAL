[org 100h]

mov ax, 0          ; clear AX to hold result
mov bx, 18         ; multiplicand
mov cx, 20         ; multiplier (counter)

mul_loop:
    add ax, bx     ; add multiplicand to AX
    dec cx         ; explicitly decrement CX
    jnz mul_loop   ; jump back if CX != 0

mov ax, 4C00h      ; terminate program
int 21h
; Hexadecimal: 0168h