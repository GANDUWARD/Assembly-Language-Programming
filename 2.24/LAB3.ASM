CODESG SEGMENT
    ASSUME CS:CODESG
START:
    MOV ax,2000H
    MOV ss,ax
    MOV sp,0
    ADD sp,10
    POP ax
    pop bx

    MOV ax,12H
    MOV bx,34H

    PUSH ax
    PUSH bx
    POP ax
    POP bx

    MOV ax,4C00H
    INT 21H
CODESG ENDS
END START