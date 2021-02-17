;Greatest between 3 numbers

.model large
.stack 100h

.data
entry db 'Enter a number :$'
resultMsg db 'The greatest num is :$'
num1 db ?
num2 db ?
num3 db ?
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,entry
    int 21h
    
    ;input num1
    mov ah,1
    int 21h
    mov num1,al
    
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,entry
    int 21h
    
    ;input num2
    mov ah,1
    int 21h
    mov num2,al
    
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,entry
    int 21h
       
    ;input num3
    mov ah,1
    int 21h
    mov num3,al
    
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main
                           
                           