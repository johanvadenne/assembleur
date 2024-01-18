.386                      ;directive qui indique que le programme doit être compatible avec tous les processeurs depuis le 80386
.model flat, stdcall      ;autre directive
option casemap : none     ;directive qui indique qu'on fait une différence entre les majuscules et les minuscules

include \masm32\include\masm32rt.inc     ;encore une autre directive


.code                     ;directive qui indique le début du code proprement dit


salut :                   ;label de début de code

inkey "Appuyez sur une touche pour continuer..."     ;macro de mise en pause de la console
exit                                                 ;macro qui quitte le programme
 
end salut                 ;label de fin de code