;Variable Concept

.model samll
.stack 100h
;data sagement section
.data
msg db 12 ;initiallizing a variable
msg1 db ? ;variable will be initialized by user 

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,msg
    int 21h
    
    ;displaying new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    ;input
    mov ah,1
    int 21h
    mov msg1,al
    
    ;displaying new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;output
    mov ah,2
    mov dl,msg1
    int 21h 
     
    exit:
    mov ah,4ch
    int 21h
    main endp

end main
