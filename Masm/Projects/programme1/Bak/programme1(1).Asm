.386
.model flat, stdcall
option casemap : none

include \masm32\include\masm32rt.inc


.code


salut :

   mov ax, 50       ; enregistrement du nombre dans ax

   mov eax, ax      ; copie du registre ax dans le registre eax
 print str$ (eax)   ; affichage de eax

 inkey "Appuyez sur une touche pour continuer..."
 exit  
 
end salut