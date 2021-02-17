.model small
.stack 100h
.code

main proc
    
    ;getting 1st input
    mov ah,1
    int 21h
    mov bl,al
    
    ;getting 2nd input
    mov ah,1
    int 21h
    mov bh,al
    
    ;displaying 1st input
    mov ah,2
    mov dl,bl
    int 21h
    
    ;displaying 2nd input
    mov ah,2
    mov dl,bh
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    