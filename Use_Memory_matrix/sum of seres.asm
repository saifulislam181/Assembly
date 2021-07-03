org 100h
.DATA 
ANS DW ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
MOV CX,10
MOV AX,0
MOV BX,1
LABEL:
Add AX,BX
Add BX,1 
MOV ANS,AX
Loop Label
  end main
ret