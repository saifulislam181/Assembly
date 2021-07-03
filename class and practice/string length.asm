.code small
.stack 100h
.data

A DB 0dh, 0ah, '$'

main proc
    mov ax, @data
    mov ds, ax
    mov ah, 1
    mov cl, 0
    
    COUNT:
    int 21h
    cmp al,0dh;cpmpare to enter
    je exit
    inc cl
    jmp COUNT
    
    exit:
    mov ah,9
    lea dx,A
    int 21h
    mov ah,2
    mov dl,cl
    add dl,48
    int 21h
main endp
    end main