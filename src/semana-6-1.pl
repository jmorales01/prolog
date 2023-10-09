paneton(tradicional,[ingrediente1,ingrediente2,ingrediente3,ingrediente4,ingrediente5]).
paneton(vegano,[ingrediente1,ingrediente2,ingrediente3,ingrediente4,ingrediente5]).
paneton(vegetariano,[ingrediente1,ingrediente2,ingrediente3,ingrediente4,ingrediente5]).

tipo_de_paneton(Tipo,Ingredientes) :- paneton(Tipo,Ingredientes).