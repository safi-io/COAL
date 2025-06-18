org 100h

start:
    mov ax, 50
    mov bx, 100

    cmp ax, bx

    ; Unsigned
    jb less_unsigned

    ; Signed
    jl less_signed 

    ; Numbers are equal or AX is greater
    mov dx, 1             ; Result: AX >= BX
    jmp done

less_unsigned:
    mov dx, 2             ; AX < BX
    jmp done

less_signed:
    mov dx, 3             ; AX < BX

done:
 
    mov ah, 4Ch
    int 21h
