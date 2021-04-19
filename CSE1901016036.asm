.model large
.stack 100h

.data
    str db "Today I will show how to convert a lowercase letter into an uppercase letter and vice versa $"
    str1 db 10,13, 'Enter 1st number :$'
    str2 db 10,13, 'Enter 2nd number :$'
    str3 db 10,13, 'The largest number is: $'
    str4 db 10,13, 'Today I will show how to convert a lowercase letter into an uppercase letter and vice versa: $'
    str5 db 'Lower case: $'
    str6 db 10,13, 'Upper case: $'
 
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,str
    mov ah,9
    int 21h
    
    lea dx,str5
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
    
    lea dx,str6
    mov ah,9
    int 21h
    
    mov ah,2
    sub bl,32
    mov dl,bl
    int 21h 
    

    lea dx,str4
    mov ah,9
    int 21h
      
    lea dx,str1 
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
   
    lea dx,str2
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
   
    cmp bl,bh
    jge echo1
    jmp echo2
    
        
    echo1:
    lea dx,str3 
    mov ah,9
    int 21h
    
    mov dl,bl
    mov ah,2
    int 21h
    jmp exit
    
    echo2:
    lea dx,str3 
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