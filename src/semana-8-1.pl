color(linea_A,celeste).
color(linea_B,rojo).
color(linea_C,azul).
color(linea_D,verde).
color(linea_E,morado).


recorrido(linea_A,[San_pedrito,San_jose_de_flores,Carabobo,Puan,Primera_junta,Acoyte,Rio_de_janeiro,Castro_barros,Loria,Plaza_miserere_UNION_Once,Alberti,Pasco,Congreso,Saenz_pena,Lima_UNION_Avenida_de_mayo,Piedras,Peru_UNION_Catedral_UNION_Bolivar,Plaza_de_mayo]).
recorrido(linea_B,[Juan_manuel_rosas,Echeverria,Parque_chas,Tronador,Federico_lacroze,Dorrego,Malabia,Angel_gallardo,Medrano,Carlos_gardel,Pueyrredon1_UNION_Corrientes,Pasteur,Callao1,Uruguay,Carlos_pellegrini_UNION_Diagonal_norte_UNION_9_de_julio,Florida,Leandro_alem]).
recorrido(linea_C,[Constitucion,San_juan,Independencia_UNION_Independencia,Moreno,Lima_UNION_Avenida_de_mayo,Carlos_pellegrini_UNION_Diagonal_norte_UNION_9_de_julio,Lavalle,General_san_martin,Retiro]).
recorrido(linea_D,[Congreso_de_tucuman,Juramento,Jose_hernandez,Olleros,Ministro_carranza,Palermo,Plaza_italia,Scalabrini_ortiz,Bulnes,Aguero,Pueyrredon2_UNION_Santa_fe,Facultad_de_medicina,Callao2,Tribunales,Carlos_pellegrini_UNION_Diagonal_norte_UNION_9_de_julio,Peru_UNION_Catedral_UNION_Bolivar]).
recorrido(linea_E,[Plaza_de_los_virreyes,Varela,Medalla_milagrosa,Emilio_mitre,Jose_maria_moreno,Av_la_plata,Boedo,General_urquiza,Jujuy_UNION_Humberto1,Pichincha,Entre_rios,San_jose,Independencia_UNION_Independencia,Belgrano,Peru_UNION_Catedral_UNION_Bolivar,Correo_central,Catalinas,Retiro]).
recorrido(linea_H,[Hospitales,Parque_patricios,Caseros,Inclan,Jujuy_UNION_Humberto1,Venezuela,Plaza_miserere_UNION_Once,Pueyrredon1_UNION_Corrientes,Cordoba,Pueyrredon2_UNION_Santa_fe,Las_heras,Facultad_de_derecho]).


recorrido_por_colores(Color, Paradas) :- color(Linea,Color),recorrido(Linea,Paradas).
recorrido_por_linea(Linea,Paradas) :- recorrido(Linea,Paradas).
interseccion(Linea1, Linea2, Puntos) :-
    recorrido(Linea1, Paradas1),
    recorrido(Linea2, Paradas2),
    intersection(Paradas1, Paradas2, Puntos).