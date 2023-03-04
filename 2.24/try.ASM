data SEGMENT
    PSP  DB CD20;
data ENDS
code SEGMENT
    ASSUME CS:CODE ,DS:DATA
start:
    mov ax,data

    mov ax,4C00h
    int 21h
code ENDS
END start