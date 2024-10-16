% ##### ECHOS #####

ensamblaje('bicicleta', ['rueda delantera', 'cuadro', 'rueda trasera']).
ensamblaje('rueda delantera', ['llanta', 'radios', 'eje']).
ensamblaje('cuadro', ['manillar', 'sillín', 'tracción']).
ensamblaje('tracción', ['eje', 'platos', 'pedales', 'cadena']).
ensamblaje('rueda trasera', ['llanta', 'radios', 'eje', 'piñones']).


% ##### REGLAS #####

% Componentes comunes entre la rueda delantera y trasera
componentes_comunes_ruedas(ComponentesComunes) :-
    ensamblaje('rueda delantera', ComponentesDelantera),
    ensamblaje('rueda trasera', ComponentesTrasera),
    intersection(ComponentesDelantera, ComponentesTrasera, ComponentesComunes).
    
% Regla para listar el contenido del sillín de la bicicleta
listar_contenido_sillin(Contenido) :-
    ensamblaje('cuadro', ComponentesCuadro),
    member('sillín', ComponentesCuadro),
    ensamblaje('sillín', ComponentesSillin),
    append(ComponentesCuadro, ComponentesSillin, Contenido).

