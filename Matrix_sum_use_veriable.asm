.model small
.stack 100h

.data  
w dw 10,20,30
  dw 30,40,50
  dw 30,50,60  
  
  sum dw 3 dup<0>

.code 
           
main proc

mov ax,@data
mov ds,ax
mov ss,ax
             
mov bp,0
col_loop:
cmp bp,6
jge exit

mov si,0

row_loop:

cmp si,18
jge increment_col

mov dx,sum[bp]
add dx,w[si][bp]
mov sum[bp],dx
               
add si,6
jmp row_loop

increment_col:

add bp,2
jmp col_loop 

exit: 
mov dx,sum+0
mov bx,sum+2
mov cx,sum+4

              
main endp