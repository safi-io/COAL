[org 100h]

mov ax, 5        ; binary: 0000 0000 0000 0101
xor cx, cx  

count_bits:
shr ax, 1        ; shift AX right by 1, bit goes into CF
jnc skip         ; if no carry (bit was 0), skip
inc cl           ; if carry set (bit was 1), increment count
skip:
cmp ax, 0        ; loop until AX becomes 0
jne count_bits

mov ax, 4C00h
int 21h
