.MODEL SMALL
.STACK 100H
.DATA
    STR1 DB 0AH,0DH,'The sum of '
    FIRSTNUM DB ?
    STR2 DB ' and '
    SECONDNUM DB ?
    STR3 DB ' is '
    ANS DB ?
    STR4 DB ' $'
.CODE
MAIN PROC
 
    MOV AX,@DATA
    MOV DS,AX
 
    MOV AH,2
    MOV DL,3FH
    INT 21H
 
    MOV AH,1
    INT 21H
    MOV BL,AL
    MOV FIRSTNUM,AL
    INT 21H
    MOV SECONDNUM,AL
 
    ADD BL,AL
    SUB BL,30H
    MOV ANS,BL
 
    MOV AH,9
    LEA DX,STR1   ;VARIABLE PRINTING FIRST TO LAST
    INT 21H
 
    MOV AH,4CH
    INT 21H
 
    MAIN ENDP
END MAIN