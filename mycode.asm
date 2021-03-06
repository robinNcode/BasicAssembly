;Greatest between 3 numbers
;MD Shahin Mia Robin
;CSE1901016113
;16A3

.model large
.stack 100h

.data
prb db 9,9,'<< Greatest Between Three Numbers >>$'
entry db 10,13,'Enter a number :$'
resultMsg db 10,13,'The greatest num is :$'

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    ;input num1
    lea dx,prb ;message
    mov ah,9
    int 21h
    
    ;input num1
    lea dx,entry ;message
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    ;input num2
    lea dx,entry ;message
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
       
    ;input num3
    lea dx,entry ;message
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    ;comparing 1st & 2nd input
    cmp bl,bh
    jge prothomBoro
    jmp ditiyoBoro
    
   
    prothomBoro:
    cmp bl,cl   ;comparing 1st & 3rd input
    jge print1
    jmp tritiyoBoro
     
    
    ditiyoBoro:
    cmp bh,cl ;comparing 2nd & 3rd input
    jge print2
    jmp print3 
    
    tritiyoBoro:
    jmp ditiyoBoro
    
    
    
    
    print1:
    lea dx,resultMsg ;message
    mov ah,9
    int 21h
    
    mov dl,bl
    mov ah,2
    int 21h
    jmp exit
    
    print2:
    lea dx,resultMsg ;message
    mov ah,9
    int 21h
    
    mov dl,bh
    mov ah,2
    int 21h
    jmp exit 
    
    print3:
    lea dx,resultMsg ;message
    mov ah,9
    int 21h
    
    mov dl,cl
    mov ah,2
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main                          