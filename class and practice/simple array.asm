.code small
.stack 100h
.data
A DB 'cse'
main proc
    mov ax, @data
    mov ds, ax
    mov ah, 2
    mov dl, A[0]
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    mov dl, A[1]
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    mov dl, A[2]
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
main endp
    end main