org 100h 

start:
    mov si, numbers 
    mov cx, 5        
    mov bx, 1    

multiply_loop:
    mov ax, [si] ; ax = current number
    mul bx ; multiply ax by bx, and store result in ax
    mov bx, ax ; update bx with the product
    add si, 2 ; move to the next number
    loop multiply_loop ; decrement cx and repeat if not zero


    mov ah, 4ch
    int 21h

numbers:
    dw 2, 3, 4, 5, 6  ; 720
