;Adding two number

.model large
.stack 100h

.data
entry db 10,13,'Enter a number:$'
resMsg db 10,13,'Num1 + Num2 = $'

num1 db ?
num2 db ?
result db ?


.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    ;input 1st number
    mov ah,9
    lea dx,entry ;message
    int 21h
    
    mov ah,1
    int 21h
    sub al,30h
    mov num1,al
    
    
    
    ;input 2nd number
    mov ah,9
    lea dx,entry ;message
    int 21h
    
    mov ah,1
    int 21h
    sub al,30h
    mov num2,al
    
    ;adding section
    add al,num1
    mov result,al
    mov ah,0
    aaa
    
    add ah,30h
    add al,30h
    mov bx,ax
    
    lea dx,resMsg ;message
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main
