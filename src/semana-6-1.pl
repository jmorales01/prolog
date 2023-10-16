paneton(tradicional, [
    '650 gr de harina',
    '130 gr de mantequilla',
    '160 gr de azúcar blanca de preferencia',
    '200 ml de leche casi una taza',
    '25 gr de levadura fresca',
    '2 cucharadas de vino dulce',
    '80 gr de pasas',
    '80 gr de frutas confitadas',
    '½ de esencia de chirimoya',
    '½ cáscara de una naranja picada en cuadritos pasada por agua caliente y luego macerada en copa de vino',
    '4 huevos',
    '3 gotas de colorante amarillo',
    '½ cucharadita de sal'
]).
paneton(vegano, [
    '2 cucharadas de semillas de lino molidas',
    '4 cucharadas de agua',
    '500 gr de harina',
    '100 gr de azúcar',
    'Un poco de sal',
    '14 gr de levadura seca',
    '250 ml de leche vegetal',
    '100 gr de margarina vegana',
    '150 gr de frutas confitadas'
]).
paneton(vegetariano, [
    '80 gramos de harina de gran fuerza (tipo harina de Manitoba) para el carro',
    '15 gramos de levadura de cerveza para el carro',
    '40 gramos de agua para el carro',
    '170 gramos de agua para la primera masa',
    '260 gramos de harina 00 para la primera masa',
    '90 gramos de malta de cebada para la primera masa',
    '40 gramos de aceite de semillas de maíz para la primera masa',
    '20 gramos de mantequilla vegetal para la primera masa',
    '70 gramos de harina de gran fuerza (tipo harina de Manitoba) para la primera masa',
    '100 gramos de harina 00 para la segunda masa',
    '40 gramos de malta de cebada para la segunda masa',
    'media cáscara de limón para la segunda masa',
    '5 gramos de sal fina para la segunda masa',
    '1 sobre de vainillina para la segunda masa',
    '20 gramos de aceite de semillas de maíz para la segunda masa',
    '160 gramos de pasas de Corinto para la segunda masa',
    '30 gramos de fruta confitada para la segunda masa',
    '100 gotas de chocolate para la segunda masa'
]).

precio(vegano, 150).
precio(clasico, 45).
precio(vegetariano, 135).


% ##### REGLAS #####

% Contar ingredientes de un paneton
cantidad_ingredientes(Paneton,Cantidad) :- paneton(Paneton, Ingredientes), length(Ingredientes, Cantidad).


% Agregar ingredientes a la lista de un panetón.
agregar_ingrediente(Paneton,Listar) :-
    paneton(Paneton, Ingredientes),
    append(Ingredientes, ['100 gr de pasas húngaras'], Listar).


% Calcular el gasto total de la compra
calcular_gasto_compra(Total) :- Total is (2 * 150) + (1 * 135) + (3 * 45).



