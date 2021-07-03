.model small
.stack 100h
.data
m db 01h,02h,03h,04h   
n db 05h,06h,07h,08h   
cnt db 04H
res db ?
.code 
      
      
main proc

mov ax,@data
mov ds,ax
mov cl,cnt             
lea si ,m              
lea di,n             

L1:

mov al,[si]
mov bl,[di]
sub al,bl            
                   
push ax              
inc si
inc di
loop L1
call store

           
store proc
pop ax                 
lea si,res
add si,04h
mov cl,04h

L2: 

pop ax            
mov [si],al
dec si
loop L2
int 3h                
ret

store endp

endp main