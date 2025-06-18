[org 0x0100]

; Increment Opeartions
mov word [0x0661], 10            ; First Number
mov word [0x0662], 20            ; Second Number

mov word ax, [0x0661]            ; Taking First Number in ax
or ax, [0x0662]
mov [0x0663], ax                 ; Storing or operation at 663

mov word ax, [0x0661]            ; Taking First Number in ax
and ax, [0x0662]
mov [0x0664], ax                 ; Storing and operation at 664

mov word ax, [0x0661]            ; Taking First Number in ax
add ax, 4                        ; incrementing by 4
mov [0x0665], ax                 ; Storing increment of first number at 665

mov word ax, [0x0662]            ; Taking Second Number in ax
add ax, 6                        ; incrementing by 6
mov [0x0666], ax                 ; Storing increment of second number at 666

; Decrement Opeartions
mov word ax, [0x661]             ; Taking First Number in ax
sub ax, 3                        ; Decrement by 3
mov [0x0667], ax                 ; Storing decerement of first number at 667

mov word ax, [0x662]             ; Taking First Number in ax
dec ax                           ; Decrement by 1
mov [0x0668], ax                 ; Storing decerement of second number at 668

mov ax, 0x4c00
int 0x21