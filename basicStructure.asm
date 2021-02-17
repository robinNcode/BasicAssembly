;basic Structure

.model large
.stack 100h
.data
.code

main proc
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main
