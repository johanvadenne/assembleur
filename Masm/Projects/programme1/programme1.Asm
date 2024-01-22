.model small
.data
    message db 'Hello, World!', 0

.code
_main:
    ; Afficher la chaîne de caractères
    mov ah, 09h
    lea dx, message
    int 21h

    ; Terminer le programme
    mov ah, 4Ch
    int 21h

end _main
