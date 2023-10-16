color(linea_A,celeste).
color(linea_B,rojo).
color(linea_C,azul).
color(linea_D,verde).
color(linea_E,lila).
color(linea_H,amarillo).

recorrido(linea_A, ['Carabobo', 'Puan', 'Primera Junta', 'Acoyte', 'Rio de Janeiro', 'Castro Barros', 'Loria', 'Plaza Miserere UNION Once', 'Alberti', 'Pasco', 'Congreso', 'Saenz Pena', 'Lima UNION Avenida de Mayo', 'Piedras', 'Peru UNION Catedral UNION Bolivar', 'Plaza de Mayo']).
recorrido(linea_B, ['De los Incas Parque Chas', 'Tronador Villa Ortuzar', 'Federico Lacroze', 'Dorrego', 'Malabia', 'Angel Gallardo', 'Medrano', 'Carlos Gardel', 'Pueyrredon1 UNION Corrientes', 'Pasteur', 'Callao1', 'Uruguay', 'Carlos Pellegrini UNION Diagonal Norte UNION 9 de Julio', 'Florida', 'Leandro N. Alem']).
recorrido(linea_C, ['Constitucion', 'San Juan', 'Independencia UNION Independencia', 'Moreno', 'Lima UNION Avenida de Mayo', 'Carlos Pellegrini UNION Diagonal Norte UNION 9 de Julio', 'Lavalle', 'General San Martin', 'Retiro']).
recorrido(linea_D, ['Congreso de Tucuman', 'Juramento', 'Jose Hernandez', 'Olleros', 'Ministro Carranza', 'Palermo', 'Plaza Italia', 'Scalabrini Ortiz', 'Bulnes', 'Aguero', 'Pueyrredon2', 'Facultad de Medicina', 'Callao2', 'Tribunales', 'Carlos Pellegrini UNION Diagonal Norte UNION 9 de Julio', 'Peru UNION Catedral UNION Bolivar']).
recorrido(linea_E, ['Plaza de los Virreyes', 'Varela', 'Medalla Milagrosa', 'Emilio Mitre', 'Jose Maria Moreno', 'Av. La Plata', 'Boedo', 'General Urquiza', 'Jujuy UNION Humberto1', 'Pichincha', 'Entre Rios', 'San Jose', 'Independencia UNION Independencia', 'Belgrano', 'Peru UNION Catedral UNION Bolivar']).
recorrido(linea_H, ['Caseros', 'Inclan', 'Jujuy UNION Humberto1', 'Venezuela', 'Plaza Miserere UNION Once']).


% ##### REGLAS #####

recorrido_por_colores(Color, Paradas) :- color(Linea,Color),recorrido(Linea,Paradas).
recorrido_por_linea(Linea,Paradas) :- recorrido(Linea,Paradas).
interseccion(Linea1, Linea2, Puntos) :-
    recorrido(Linea1, Paradas1),
    recorrido(Linea2, Paradas2),
    intersection(Paradas1, Paradas2, Puntos).

% Contar estaciones de una linea
contar_estaciones(Linea,Cantidad_estaciones) :- recorrido(Linea, Estaciones), length(Estaciones, Cantidad_estaciones).

% Estaciones que unen la linea color X y color Y
estaciones_que_unen(ColorX, ColorY, EstacionesEnComun) :-
    color(LineaX, ColorX),
    color(LineaY, ColorY),
    LineaX \= LineaY,
    recorrido(LineaX, EstacionesX),
    recorrido(LineaY, EstacionesY),
    encontrar_estaciones_comunes(EstacionesX, EstacionesY, EstacionesEnComun).
% Regla para encontrar las estaciones en común entre dos listas
encontrar_estaciones_comunes([], _, []).
encontrar_estaciones_comunes([Estacion | RestoX], EstacionesY, [Estacion | EstacionesComunesResto]) :-
    member(Estacion, EstacionesY),
    encontrar_estaciones_comunes(RestoX, EstacionesY, EstacionesComunesResto).
encontrar_estaciones_comunes([_ | RestoX], EstacionesY, EstacionesComunesResto) :-
    encontrar_estaciones_comunes(RestoX, EstacionesY, EstacionesComunesResto).

% Estaciones que no están en funcionamiento
estaciones_fuera_de_tramo(Color, EstacionInicio, EstacionFin, Nuevo_tramo) :-
    recorrido_por_colores(Color, Paradas),
    obtener_tramo(Paradas, EstacionInicio, EstacionFin, Nuevo_tramo).
% Regla para obtener el tramo de estaciones entre EstacionInicio y EstacionFin
obtener_tramo(Paradas, EstacionInicio, EstacionFin, Nuevo_tramo) :-
    append(_, [EstacionInicio | Resto], Paradas),
    append(Nuevo_tramo, [EstacionFin | _], Resto).

% Nuevo tramo de la linea de colorX
estaciones_funcionales(Color, EstacionInicio, EstacionFin, Nuevo_tramo) :-
    recorrido_por_colores(Color, Paradas),
    eliminar_estaciones_en_tramo(Paradas, EstacionInicio, EstacionFin, Nuevo_tramo).
% Regla para eliminar las estaciones en el tramo entre EstacionInicio y EstacionFin
eliminar_estaciones_en_tramo(Paradas, EstacionInicio, EstacionFin, Nuevo_tramo) :-
    append(Inicio, [EstacionInicio | Tramo], Paradas),
    append(_, [EstacionFin | Resto], Tramo),
    append(Inicio, Resto, Nuevo_tramo).



