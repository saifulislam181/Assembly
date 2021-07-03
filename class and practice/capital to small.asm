.code small
.stack 100h
.data
main proc
    mov ax, @data
    mov ds, ax   
    
    mov ah, 1
    int 21h
    
    mov bl,al
    sub bl,48
    
    mov ah,1
    int 21h
      
    mov bh,al
    sub bh,48
    
    add bl,bh
    mov dl,bl
    add dl,48
    
    mov ah,2
    int 21h 
main endp
    end main