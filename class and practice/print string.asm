;printing string
.code small
.stack 100h
.data
A DB 'a',0dh,0ah,'b$'
main proc
    mov ax, @data
    mov ds, ax
    mov ah, 9
    lea dx, A
    int 21h
main endp
    end main
    