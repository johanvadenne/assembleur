.386
.model flat, stdcall
option casemap : none

include \masm32\include\masm32rt.inc


.code


salut :

	print  "mon chiffre prefere est:", 13, 10
	mov eax, 18
	inkey "Appuyez sur une touche pour continuer..."
	print str$ (eax), 13, 10
	inkey "Appuyez sur une touche pour continue"
	print str$ (eax), 13, 10
	inkey "Appuyez sur une touche pour continuer..."
	print str$ (eax), 13, 10
	inkey "puyez sur une touche pour continuer..."
	print str$ (eax), 13, 10
	exit  
 
end salut