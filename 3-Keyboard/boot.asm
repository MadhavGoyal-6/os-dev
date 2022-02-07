mov ah, 0x0
int 0x16
mov ah, 0x0e
mov al, al
jmp $
times 510-($-$$) db 0
dw 0xaa55