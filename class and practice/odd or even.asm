.code small
.stack 100h
.data

A DB 0dh,0ah,'$'
even DB 0dh,0ah,'Even$'
odd DB 0dh,0ah,'Odd$'

main proc
    mov ax, @data
    mov ds, ax
    mov ax, 100
    
    LOOP:
    cmp ax, 0
    je evens
    jl odds
    sub ax,2
    jmp LOOP
    
    evens:
    mov ah, 9
    lea dx, even
    int 21h
    jmp exit
    
    odds:
    mov ah, 9
    lea dx, odd
    int 21h
    jmp exit
    
    exit:
    
main endp
    end main