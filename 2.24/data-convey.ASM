code SEGMENT
    ASSUME CS:CODE
start:
    
    MOV AX,0  ;将DS制零
    MOV DS,AX ;将DS指向0

    MOV BX,200     ;设置起始段地址
    MOV CX,003FH   ;设置迭代次数
    
s:  MOV DS:[BX],AX ;将AX数据传送到目的地址
    ADD AX ,1     ;数据加一
    ADD BX ,1     ;地址加一
loop s

    MOV AX,4C00H  ;结束步骤
    INT 21H


code ENDS
END start
