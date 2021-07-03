.model small

.stack 100h

.data

alpha db 10

beta dw 345

a db 1010b

b dw 0FFFFh

c db 'a'

str db 'hello'

.code 
main proc
    
    
    mov ax, @data
    mov ds, ax
   ; mov ax,beta 
   ;ah = bh+bl
     ;add dest ,src
     
     add bh,3
     mov bl.2
  ; add bh,bl
   ;mov ah,bl  
   
   sub bl,bh  
   ;inc beta       ;inc=increment++
    
    ;dec beta        ;decrement beta--
    
    
main endp 
end main