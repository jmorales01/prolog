color(linea_A,celeste).
color(linea_B,rojo).
color(linea_C,azul).
color(linea_D,verde).
color(linea_E,morado).


recorrido(linea_A,[san_pedrito,san_jose_de_flores,carabobo,puan,primera_junta,acoyte,rio_de_janeiro,castro_barros,loria,plaza_miserere_UNION_Once,alberti,pasco,congreso,saenz_pena,lima_UNION_Avenida_de_mayo,piedras,peru_UNION_Catedral_UNION_Bolivar,plaza_de_mayo]).
recorrido(linea_B,[juan_manuel_rosas,echeverria,parque_chas,tronador,federico_lacroze,dorrego,malabia,angel_gallardo,medrano,carlos_gardel,pueyrredon1_UNION_Corrientes,pasteur,callao1,uruguay,carlos_pellegrini_UNION_Diagonal_norte_UNION_9_de_julio,florida,leandro_alem]).
recorrido(linea_C,[constitucion,san_juan,independencia_UNION_Independencia,moreno,lima_UNION_Avenida_de_mayo,carlos_pellegrini_UNION_Diagonal_norte_UNION_9_de_julio,lavalle,general_san_martin,retiro]).
recorrido(linea_D,[congreso_de_tucuman,juramento,jose_hernandez,olleros,ministro_carranza,palermo,plaza_italia,scalabrini_ortiz,bulnes,aguero,pueyrredon2_UNION_Santa_fe,facultad_de_medicina,callao2,tribunales,carlos_pellegrini_UNION_Diagonal_norte_UNION_9_de_julio,peru_UNION_Catedral_UNION_Bolivar]).
recorrido(linea_E,[plaza_de_los_virreyes,varela,medalla_milagrosa,emilio_mitre,jose_maria_moreno,av_la_plata,boedo,general_urquiza,jujuy_UNION_Humberto1,pichincha,entre_rios,san_jose,independencia_UNION_Independencia,belgrano,peru_UNION_Catedral_UNION_Bolivar,correo_central,catalinas,retiro]).
recorrido(linea_H,[hospitales,parque_patricios,caseros,inclan,jujuy_UNION_Humberto1,venezuela,plaza_miserere_UNION_Once,pueyrredon1_UNION_Corrientes,cordoba,pueyrredon2_UNION_Santa_fe,las_heras,facultad_de_derecho]).


recorrido_por_colores(Color, Paradas) :- color(Linea,Color),recorrido(Linea,Paradas).
recorrido_por_linea(Linea,Paradas) :- recorrido(Linea,Paradas).
interseccion(Linea1, Linea2, Puntos) :-
    recorrido(Linea1, Paradas1),
    recorrido(Linea2, Paradas2),
    intersection(Paradas1, Paradas2, Puntos).