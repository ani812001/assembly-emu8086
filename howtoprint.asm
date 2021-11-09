include 'emu8086.inc'

.model small
.data

    n db ?
    
.code
     main proc
        mov ax,@data
        mov ds,ax
        
        print 'Enter Your Character:'
        
        mov ah,01h
        int 21h
        
        mov n, al
        
        mov dl,10
        mov ah,02h
        int 21h
        
        mov dl,13
        mov ab,02h
        int 21h
        
        print 'Your character is:'
        
        mov dl,n
        
        mov ah,02h
        int 21h
        
        
     main endp
     
end main