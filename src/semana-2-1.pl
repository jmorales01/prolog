
se_limpia(lab_a,'6am').
se_limpia(lab_a,'10am').
se_limpia(lab_a,'15pm').
se_limpia(lab_a,'23pm').
se_limpia(lab_c,'6:15am').
se_limpia(lab_c,'10:15am').
se_limpia(lab_c,'17pm').
se_limpia(lab_b,'5am').
se_limpia(lab_b,'13pm').
se_limpia(lab_b,'17pm').
se_limpia(lab_b,'21pm').
se_limpia(lab_d,'4am').

encargada(maria,lab_a).
encargada(juan,lab_c).
encargada(arturo,lab_b).
encargada(margarita,lab_d).

para_carrera(labA,ingenieria_software).
para_carrera(labA,ingenieria_sistemas).
para_carrera(labD,mecatronica).
para_carrera(labB,ingenieria_electrica).
para_carrera(labC,ingenieria_electrica).

tiene_capasidad(labA,40).
tiene_capasidad(labC,40).
tiene_capasidad(labB,26).
tiene_capasidad(labD,26).

% REGLAS
se_encuetra(Encargado,Laboratorio) :- se_limpia(Laboratorio,Hora), encargada(Encargado,Laboratorio).
esta_encargado(Carrera,Encargado) :- para_carrera(Laboratorio,Carrera), encargada(Encargado,Laboratorio).


/*
------- RESPUESTAS -------
    En donde esta Maria a las 23 pm?
1- 

    Que laboratorio utiliza la carrera de Ingenieria de Software
2-  para_carrera(Laboratorio,ingenieria_software).

    Cuantos alumnos pueden utilizar comodamente el laboratorio C?
3-  tiene_capasidad(labC,Maximo).

    Quien esta encargado de la limpieza del laboratorio de Mecatronica
4-

    Cuantos equipos hay en el laboratorio que esta a cargo de la limpieza de Arturo?
5-

*/

