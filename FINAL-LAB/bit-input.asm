org 100h

section .data
    input times 8 db 0
    msg_even db 'Even$'
    msg_odd  db 'Odd$'

section .text
start:
    mov si, input
    mov cx, 8    

read_loop:
    mov ah, 1  
    int 21h
    cmp al, 13 
    je done_input
    mov [si], al    
    inc si
    loop read_loop

done_input:
    mov si, input
    xor bl, bl

    mov cx, 8
    
convert_loop:
    shl bl, 1    
    lodsb           
    cmp al, '1'
    jne skip_set
    or bl, 1

skip_set:
    loop convert_loop

    test bl, 1      
    jz print_even

print_odd:
    mov dx, msg_odd
    call print
    jmp exit

print_even:
    mov dx, msg_even
    call print

exit:
    mov ah, 4ch
    int 21h

print:
    mov ah, 09h
    int 21h
    ret
