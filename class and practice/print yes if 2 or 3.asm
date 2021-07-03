.code small
.stack 100h
.data
A DB 'YES$'
B DB 'NO$'
main proc
    mov ax, @data
    mov ds, ax
    mov ah, 1
    int 21h
    cmp al, '3'
    je l1
    cmp al, '2'
    je l1
    mov ah, 9
    lea dx, B
    int 21h
    jmp exit
    
    l1:
    mov ah, 9
    lea dx, A
    int 21h
    
    exit:
main endp
    end main