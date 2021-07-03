.model small

.stack 100h

.data
w dw 10, 20, 30   
  ;  0, 2, 4
  dw 30, 40, 50
  ;  6, 8, 10       1*3*2
  dw 30, 50, 60
  ;  12, 14, 16     2*3*2

;this is the same thing
;w dw 10, 20, 30, 30, 40, 50, 30, 50, 60
  
;5x5 matrix
;matrix dw 5 dup(0)
;       dw 5 dup(0)     
;       dw 5 dup(0)
;       dw 5 dup(0)
;       dw 5 dup(0)
matrix dw 5 dup (5 dup(0))

sum dw 3 dup (0)

.code
main proc
   mov ax, @data
   mov ds, ax
   mov ss, ax
   
   mov bp, 0    ;for column
   col_loop:
   cmp bp, 6
   jge exit
   
   mov si, 0    ;for row
   row_loop:
   cmp si, 18
   jge increment_column
   
   ;sum[j] += W[i][j]
   mov dx, sum[bp]
   add dx, w[si][bp]
   mov sum[bp], dx
   
   add si, 6
   jmp row_loop
   
   increment_column:
   add bp, 2
   jmp col_loop
   
   exit:
   mov ax, sum+0
   mov bx, sum+2
   mov cx, sum+4 
main endp

;for(int j = 0; j < 3; ++j){
;   for(int i = 0; i < 3; ++i){
;      sum[j] += W[i][j]  
;   }
;}