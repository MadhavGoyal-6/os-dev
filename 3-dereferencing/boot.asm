[org 0x7c00]
mov ah,0x0e
mov bx, char
mov al, [bx]
int 0x10
char:
    db 'Z'
jmp $
times 510-($-$$) db 0
dw 0xaa55