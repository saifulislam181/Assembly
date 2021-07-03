.model    small   
.stack 100h
.data

inp1 db 0

.code
main proc 
    mov ax,@data
    mov ds,ax
    mov ah,1
    int 21h 
    
    mov inp1,al
    int 21h 
    
    mov inp2,al
    int 21h
    
    
    mov inp3,al
    ;int 21h
    
     mov al,10
     mov,ah,2
     mov dl,102
     int 21h
     add al,5
    
    
    main endp
end main
