.code small
.stack 100h
.data       
N dW ?
main proc near
    mov ax,@data
    mov ds,ax  
    mov N,5
    mov cx,N
    mov ax,1
    loops:
    mul cx
    loop  loops
    mov dx,ax
    mov ah,2
    int 21h
main endp
    end main
    