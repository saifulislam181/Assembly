.code small
.stack 100h
.data   
A DB 10
B DB 8     ;10/8
quotient DB ?
Remainder DB ?
main proc near
    mov ax,@data
    mov ds,ax
    mov ah,0
    mov al,A
    div B
    mov quotient,al
    mov remainder,ah
    mov ah,2
    mov dl,quotient 
    add dl,48
    int 21h
    mov dl,remainder 
    add dl,48
    int 21h 
   
main endp
    end main