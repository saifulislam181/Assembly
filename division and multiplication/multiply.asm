.code small
.stack 100h
.data   
A DB 5
B DB 11
main proc near
    mov ax,@data
    mov ds,ax
    mov al,A
    mul B
    mov dx,ax
    mov ah,2
    int 21h
main endp
    end main