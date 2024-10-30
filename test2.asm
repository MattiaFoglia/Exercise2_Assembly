data segment
    ; Segmento per la dichiarazione delle variabili da usare

ends


code segment
start:
    ; Istruzioni per settare i registri di segmento
    mov ax, data
    mov ds, ax
     
     

    ; CODICE DEL PROGRAMMA
      
     push 500   ;si mette in stack il valore 500 
     push 800   ;si mette in stack il valore 800
     push 400   ;si mette in stack il valore 400
     push 300   ;si mette in stack il valore 300
      
     pop ax     ;si ritira da stack e si scrive sul registro ax
     add ax,100 ;si somma 100 ad ax
     pop bx     ;si ritira da stack e si scrive sul registro bx
     add bx,100 ;si somma 100 ad bx
     pop cx     ;si ritira da stack e si scrive sul registro cx
     add cx,100 ;si somma 100 ad cx
     pop dx     ;si ritira da stack e si scrive sul registro dx
     add dx,100 ;si somma 100 ad dx
     
     push dx    ;si mette in stack il registro dx 
     push cx    ;si mette in stack il registro cx
     push bx    ;si mette in stack il registro bx
     push ax    ;si mette in stack il registro ax
             
            
            

    ; Istruzioni per chiudere il programma
    mov ax, 4c00h 
    int 21h    
ends

end start