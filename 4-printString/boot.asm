[org 0x7c00]
mov ah, 0x0e
mov bx, string
printChar:
    mov al, [bx]
    int 0x10
    inc bx
    mov cx, [bx] 
;figured out that I can't perform 2 operations simultaneously becuase I wouldn't have specified
; any place to store the temporary value in the RAM and in Assembly, every process would only 
;take place if the user specifies it to.
    cmp cx, 0
    jne printChar
    jmp $
string:
    db "hello world from BIOS",0
times 510-($-$$) db 0
dw 0xaa55