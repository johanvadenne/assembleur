.model small
.data
    message db 'Hello, World!', 0

.code
main:
    ; Afficher la cha�ne de caract�res
    mov ah, 09h        ; Chargement de la fonction 09h de l'interruption 21h (affichage de cha�ne de caract�res)
    lea dx, message    ; Charger l'adresse de la cha�ne de caract�res dans DX
    int 21h            ; Appeler l'interruption 21h

    ; Terminer le programme
    mov ah, 4Ch        ; Chargement de la fonction 4Ch de l'interruption 21h (fin de programme)
    int 21h            ; Appeler l'interruption 21h

end main
