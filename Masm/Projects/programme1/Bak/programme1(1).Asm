.model small
.data
    message db 'Hello, World!', 0

.code
main:
    ; Afficher la chaîne de caractères
    mov ah, 09h        ; Chargement de la fonction 09h de l'interruption 21h (affichage de chaîne de caractères)
    lea dx, message    ; Charger l'adresse de la chaîne de caractères dans DX
    int 21h            ; Appeler l'interruption 21h

    ; Terminer le programme
    mov ah, 4Ch        ; Chargement de la fonction 4Ch de l'interruption 21h (fin de programme)
    int 21h            ; Appeler l'interruption 21h

end main
