.model large
.stack 100h

.data
    msg1 db "Student profile ",10,13,"---------------",10,13,"Name:Ayesha Siddika",10,13,"Program: B.sc Engineering CSE",10,13,"Student ID: CSE1901016132",10,13,"Section name: 16A3",10,13,"---------------$"
    msg2 db 10,13,10,13, "Another program that find the largest number between two numbers $"
    msg3 db 10,13,'Enter 1st number :$'
    msg4 db 10,13,'Enter 2nd number :$'
    msg5 db 10,13,'The largest number is: $'
    msg6 db 10,13,10,13, "Today I will show how to convert a lowercase letter into an uppercase letter and vice versa: $"
    a db 10,13,10,13,'Lower case: $'
    b db 10,13,'Upper case: $'
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    lea dx,msg6
    mov ah,9
    int 21h
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    sub bl,32
    mov dl,bl
    int 21h 
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    
    lea dx,msg3 
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
   
    lea dx,msg4 
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
   
    cmp bl,bh
    jge dis1
    jmp dis2
    
        
    dis1:
    lea dx,msg5 
    mov ah,9
    int 21h
    
    mov dl,bl
    mov ah,2
    int 21h
    jmp exit
    
    dis2:
    lea dx,msg5 
    mov ah,9
    int 21h
    
    mov dl,bh
    mov ah,2
    int 21h
    jmp exit
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main