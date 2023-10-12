ensamblaje(bicicleta,[rueda_delantera,cuadro,rueda_tracera]).
ensamblaje(rueda_delantera,[llanta,radios,eje]).
ensamblaje(cuadro,[manejar,sillin,traccion]).
ensamblaje(traccion,[eje,platos,pedales,cadena]).
ensamblaje(rueda_tracera,[llanta,radios,eje,pinones]).


pieza_basica(X) :- ensamblaje(traccion,X).
toda(Z,Y,X,A,B) :- ensamblaje(bicicleta,Z), ensamblaje(rueda_delantera,Y),
    ensamblaje(cuadro,X), ensamblaje(traccion,A), ensamblaje(rueda_tracera,B).


% ##### REGLAS #####

ensamblaje(rueda_delantera, ComponentesDelantera), ensamblaje(rueda_tracera, ComponentesTrasera), list_intersection(ComponentesDelantera, ComponentesTrasera, ComponentesComunes).

ensamblaje(sillin, [luces | OtrosComponentes]).
