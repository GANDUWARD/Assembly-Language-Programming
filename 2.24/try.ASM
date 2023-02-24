data SEGMENT
    dusha DB 01 
data ENDS
code SEGMENT
    ASSUME CS:CODE, DS:DATA
start:
   MOV ax,0010H
code ENDS
END start
