.code small
.stack 100h
.data

A DB ?
B DB ?
endl DB 0dh, 0ah, '$'
great DB 'A is bigger than B$'
notgreat DB 'B is bigger than A$'

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    mov A, al
    
    mov ah, 1
    int 21h
    mov B, al
    
    mov al, A
    cmp al, B
    jg Greater:
    cmp al, B
    jl Lesser:
    
    Greater:
    mov ah, 9
    lea dx, great
    int 21h
    jmp exit
    
    Lesser:
    mov ah, 9
    lea dx, notgreat
    int 21h
    jmp exit 
    
    exit:
    
main endp
    end main
    
    
    
    