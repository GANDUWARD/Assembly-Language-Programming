data SEGMENT
    dusha DB 01 
data ENDS
code SEGMENT
    ASSUME CS:CODE, DS:DATA
start:
   MOV ax,1000H
   MOV ss,ax
   MOV sp,100FH
   push ax
   push ax
   mov ax,0000H
   pop ax
   pop bx
   
  MOV ax,4C00H
    INT 21H
code ENDS
END start
