.code small
.stack 100h
.data    
A DB 5
B DB 2 
temp DW ?
main proc near
    mov ax,@data
    mov ds,ax 
    mov al,5
    mul A
     
    mov temp,ax
    mov al,2
    mul B
    sub temp,ax
    mov dx,temp
    
    mov ah,2
    int 21h
main endp
    end main
    
;5A-2B    