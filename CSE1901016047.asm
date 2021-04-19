.model large
.stack 100h

.data
    msg1 db 10,13, 'Enter 1st number :$'
    msg2 db 10,13, 'Enter 2nd number :$'
    msg3 db 10,13, 'The largest number is: $'
    msg4 db 10,13, 'Today I will show how to convert a lowercase letter into an uppercase letter and vice versa: $'
    msg5 db 'Lower case: $'
    msg6 db 10,13, 'Upper case: $'
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg5
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    lea dx,msg6
    mov ah,9
    int 21h
    
    mov ah,2
    sub bl,32
    mov dl,bl
    int 21h 
    

    lea dx,msg4
    mov ah,9
    int 21h
      
    lea dx,msg1 
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
   
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
   
    cmp bl,bh
    jge output1
    jmp output2
    
        
    output1:
    lea dx,msg3 
    mov ah,9
    int 21h
    
    mov dl,bl
    mov ah,2
    int 21h
    jmp exit
    
    output2:
    lea dx,msg3 
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