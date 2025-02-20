[org 0x0100]

xor ax, ax    ; reset accumulator
mov bx, 0     ; set the counter

outerloop:
    add ax, [numbers+bx]
    add bx, 2

    cmp bx, 8 ; if they have save value, ZF will be set
    jne outerloop ; jump if not equal


mov [result], ax

mov ax, 0x4c00
int 0x21

numbers: dw 5,10,15,30
result: dw 0

; Destination choti hai, source bara hai. CF will be set
; cmp bx, 8
;     destination, source
; internally cmp does (bx-8)
/*
    If BX == 8, the Zero Flag (ZF) is set.
    If BX > 8, the Sign Flag and Carry Flag are adjusted accordingly.
    If BX < 8, flags are updated based on the negative result.
 */