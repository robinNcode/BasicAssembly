;String Concept
; AH functio's parameter
;   if 1 then single input
;   if 2 then single Output
;   if 9 then string output 

.model large
.stack 100h
.data
    entry db 'Enter a number: $'
    num db ?
    
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    ;output
    mov ah,9
    lea dx,entry
    int 21h
    
    ;input
    mov ah,1
    int 21h
    mov num,al
    
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;output
    mov ah,2
    mov dl,num
    int 21h
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main
