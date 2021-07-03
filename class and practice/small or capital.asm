.code small
.stack 100h
.data

A DB 'Small Letter$'
B DB 'Capital Letter$'

main proc
    mov ax, @data
    mov ds, ax
    mov ah, 1
    int 21h
    cmp al, 'a'
    jge check_small_z
    cmp al, 'A'
    jge check_capital_z   
    jmp exit
    
    check_small_z:
    cmp al, 'z'
    jle small_letter:
    jmp exit       
    
    check_capital_z:
    cmp al, 'Z'
    jle capital_letter:
    jmp exit
    
    small_letter:
    lea dx, A
    mov ah, 9
    int 21h
    jmp exit
    
    capital_letter:
    lea dx, B
    mov ah, 9
    int 21h
    jmp exit
        
    exit:
main endp
    end main