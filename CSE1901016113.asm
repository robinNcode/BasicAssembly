;Final Assignment Of Sonargaon University
;MD Shahin Mia Robin
;CSE1901016113
;16A3

DIS MACRO STR
MOV AH,09H
LEA DX,STR
INT 21H
ENDM
DATA SEGMENT
    introMsg DB 9,"Student profile ",10,13,"---------------------------",10,13,"Name:MD Shahin Mia Robin",10,13,"Program: B.sc Engineering CSE",10,13,"Student ID: CSE1901016113",10,13,"Section name: 16A3",10,13,"---------------------------$"
    prbMsg1 DB 10,13,10,13, "Today I will show how to convert a lowercase letter into an uppercase letter and vice versa $"
    prbMsg2 DB 10,13,10,13, "Another program that find the largest number between two numbers $"
    MSG1 DB 10,13,10,13,"Enter your string : $"
    MSG2 DB "Converted string is : $"
    STR1 DB 20 DUP('$')
    LINE DB 10,13,'$'
    MSG3 DB 10,13, 'Enter 1st number :$'
    MSG4 DB 10,13, 'Enter 2nd number :$'
    resultMsg DB 10,13, 'The largest number is:$'
    
DATA ENDS

CODE SEGMENT
          ASSUME DS:DATA,CS:CODE
START:
        MOV AX,DATA
        MOV DS,AX
        
        ;Introduction 
        LEA DX,introMsg 
        MOV AH,9
        INT 21H
        
     ;Problem Number 1 
        LEA DX,prbMsg1 
        MOV AH,9
        INT 21H 
        
        DIS MSG1
        MOV AH,0AH
        LEA DX,STR1
        INT 21H
        
        DIS LINE
        MOV CH,00
        MOV CL,BYTE PTR[STR1+1]
        LEA SI,STR1+2
        
     label1: MOV AH,BYTE PTR[SI]
        CMP AH,'A'
        JL prb2
        CMP AH,'Z'
        JG label2
        ADD BYTE PTR[SI],32
        JMP label3
        
     label2:CMP AH,'a'
        JL prb2
        CMP AH,'z'
        JG prb2
        SUB BYTE PTR[SI],32
        
     label3:INC SI
        LOOP label1
        DIS MSG2
        DIS STR1+2
        
     ;Problem Number 2      
     prb2:
        LEA DX,prbMsg2 
        MOV AH,9
        INT 21H 
        
        
        LEA DX,MSG3 
        MOV AH,9
        INT 21H
        
        MOV AH,1
        INT 21H
        MOV BL,AL
        
       
        LEA DX,MSG4 
        MOV AH,9
        INT 21H
        
        MOV AH,1
        INT 21H
        MOV BH,AL
        
       
        CMP BL,BH
        JGE print1
        JMP print2
        
            
        print1:
        LEA DX,resultMsg 
        MOV AH,9
        INT 21H
        
        MOV DL,BL
        MOV AH,2
        INT 21H
        JMP exit
        
        print2:
        LEA DX,resultMsg 
        MOV AH,9
        INT 21H
        
        MOV DL,BH
        MOV AH,2
        INT 21H
        JMP exit
        
        
        exit:
        MOV AH,4CH
        INT 21H 
        
CODE ENDS
END START