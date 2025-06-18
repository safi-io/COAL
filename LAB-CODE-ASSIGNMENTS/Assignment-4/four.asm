org 100h

; Read first hex digit
mov ah, 01h
int 21h
call convert_hex_nibble
shl al, 4
mov bl, al

; Read second hex digit
mov ah, 01h
int 21h
call convert_hex_nibble
or bl, al
mov al, bl           ; AL = full byte value

; Print Hex
mov dx, hex_msg
call print_string
mov ah, al
call print_hex

; Print Decimal
mov dx, dec_msg
call print_string
mov ax, 0
mov al, bl
mov ah, 0
call print_dec

; Print Binary
mov dx, bin_msg
call print_string
mov al, bl
call print_bin

; Exit program
mov ax, 4C00h
int 21h

; --- Convert ASCII hex digit to nibble ---
convert_hex_nibble:
    cmp al, '0'
    jb .error
    cmp al, '9'
    jbe .digit
    cmp al, 'A'
    jb .check_lower
    cmp al, 'F'
    jbe .upper
.check_lower:
    cmp al, 'a'
    jb .error
    cmp al, 'f'
    ja .error
    sub al, 'a' - 10
    ret
.upper:
    sub al, 'A' - 10
    ret
.digit:
    sub al, '0'
    ret
.error:
    mov al, 0
    ret

; --- Print string pointed by DX ---
print_string:
    mov ah, 09h
    int 21h
    ret

; --- Print hex byte in AH ---
print_hex:
    mov ah, al
    shr ah, 4
    call print_nibble
    and al, 0Fh
    mov ah, al
    call print_nibble
    call newline
    ret

print_nibble:
    add ah, '0'
    cmp ah, '9'
    jbe .done
    add ah, 7
.done:
    mov dl, ah
    mov ah, 02h
    int 21h
    ret

; --- Print decimal in AX ---
print_dec:
    mov cx, 0
    mov bx, 10
    push ax
.dec_loop:
    xor dx, dx
    div bx
    push dx
    inc cx
    test ax, ax
    jnz .dec_loop
.dec_print:
    pop dx
    add dl, '0'
    mov ah, 02h
    int 21h
    loop .dec_print
    call newline
    ret

; --- Print binary from AL ---
print_bin:
    mov cl, 8
.bin_loop:
    shl al, 1
    jc .bit1
    mov dl, '0'
    jmp .print_bit
.bit1:
    mov dl, '1'
.print_bit:
    mov ah, 02h
    int 21h
    loop .bin_loop
    call newline
    ret

newline:
    mov dl, 0Dh
    mov ah, 02h
    int 21h
    mov dl, 0Ah
    int 21h
    ret

hex_msg db "Hex: $"
dec_msg db "Dec: $"
bin_msg db "Bin: $"
