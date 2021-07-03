.code small
.stack 100h
.data
main proc near
    mov ax,@data
    mov ds,ax
    mov ax,37467 ; change this value to see the effect
    mov bx,10
    mov cx,0 
    loops:
    mov dx,0
    div bx 
    push dx
    inc cx
    cmp ax,0
    je loop2
    jmp loops
    
    loop2:
    pop dx  
    add dx,48
    mov ah,2
    int 21h
    loop loop2
main endp
    end main
            
    