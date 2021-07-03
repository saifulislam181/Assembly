;the user will give a character as input
;if the char is lowercase char,will print the upper cvase version of it
;voice versa
;'a'<=c<='z'true



.model small
.stack 100h
.data
input_msg db "Enter your char here:$" 
msg1 db"your input is an uppercase:$"



.codde
main proc
    mov ax,data
    mov ds,ax
    
    mov ah,9
    lea dx,input_msg 
    int 21h
    
    mov ah,1
    int 21h
    
    cond1:
    cmp al,'a'
    jle cond2
    jmp uppercase 
    
    mov cl,al
     
    cond2:
    cmp al,'z'    
    jle lowercase 
    jmp uppercase
    
    
    uppercase: 
    
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    jmp exit
    
    
    lowercase:
    mov ah,9
    lea dx,msg1
    int 21h
    
    exit:
    
main endp
end main