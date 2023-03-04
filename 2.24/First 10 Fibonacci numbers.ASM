DATA SEGMENT
    DB 1, 1, 18 DUP (0)   ; 提示: 18 DUP (0) 表示后面18个单元全部为0的意思
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
start:
    MOV AX, DATA   
    MOV DS,AX     ;设置段地址
    MOV BX,2     ;设置偏移地址
    SUB AX, AX
    MOV CX,18    ;设置迭代次数
s:  
    MOV AL,DS:[BX-2]   ;注意位数
    ADD DS:[BX], AX
    SUB AX,AX
    MOV AL,DS:[BX-1]
    ADD DS:[BX], AX
    ADD BX,1      
loop s
    MOV AX ,4C00H ;返回dos
    INT 21H 
CODE ENDS
END start