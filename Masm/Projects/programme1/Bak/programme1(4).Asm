.386
.model flat, stdcall
option casemap : none

include \masm32\include\masm32rt.inc


.code


salut :

	mov ebx, 18
	print  "mon chiffre prefere est:", 13, 10
	print str$ (eax), 13, 10
	mov ecx, 18
	print  "mon chiffre prefere est:", 13, 10
	print str$ (eax), 13, 10
	mov edx, 18
	print  "mon chiffre prefere est:", 13, 10
	print str$ (eax), 13, 10
	inkey "Appuyez sur une touche pour continuer..."
	exit  
 
end salut