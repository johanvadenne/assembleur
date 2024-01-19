.386
.model flat, stdcall
option casemap : none

include \masm32\include\masm32rt.inc


.code


salut :

; Premier affichage : sans le message "Contenu de eax"

   mov eax, 67

 print str$ (eax)
 print " ", 13, 10

; Deuxième affichage : avec le message "Contenu de eax"

   mov eax, 67

 print "Contenu de eax : "
 print str$ (eax)
 print " ", 13, 10

 inkey "Appuyez sur une touche pour continuer..."
 exit  
 
end salut