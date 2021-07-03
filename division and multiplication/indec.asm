.code small
.stack 100h
.data   

indec proc near
    mov BX,0 
    input:
    mov ah,1
    int 21h
    cmp al,0dh
    je exit
    and ax,00FFh
    sub ax,48
    push ax;the digit
    mov ax,bx
    mov cx,10
    mul cx  
    pop dx
    add ax,dx
    mov bx,ax
    loop input
    exit:  
    mov dx,bx
    mov ah,2
    int 21h
main proc near
    mov ax,@data
    mov dx,ax
    call indec
main endp
    end main
    
    