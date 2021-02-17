.model large
.stack 100h
.code
main proc
    
    mov ah,2
    mov dl,'h'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,'l'
    int 21h
    mov dl,'l'
    int 21h
    mov dl,'o'
    int 21h    
    mov dl,009
    int 21h
    mov dl,'W'
    int 21h
    mov dl,'o'
    int 21h
    mov dl,'r'
    int 21h
    mov dl,'l'
    int 21h
    mov dl,'d'
    int 21h

    exit:
        mov ah,4ch
        int 21h
        main endp
end main