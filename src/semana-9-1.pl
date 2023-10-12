% ##### ECHOS #####

% Zonas
zona('Lima Centro', 'Lima Este', 'Lima Norte', 'Lima Sur').


% Distritos en Lima Centro
distrito('Lima Centro', ['Cercado de Lima', 'La Victoria', 'San Miguel', 'Pueblo Libre']).

% IESTP y Carreras en Lima Centro
iestp('Cercado de Lima', ['Argentina', 'Diseño y Comunicación']).
carrera('Argentina', ['Administración de Empresas', 'Computación e Informática y Contabilidad']).
carrera('Diseño y Comunicación', ['Comunicación Audiovisual', 'Diseño de Interiores', 'Diseño de Modas y Diseño Publicitario']).

iestp('La Victoria', ['Arturo Sabroso Montoya', 'José Pardo']).
carrera('Arturo Sabroso Montoya', ['Computación e Informática', 'Contabilidad', 'Enfermería Técnica', 'Prótesis Dental', 'Secretariado Ejecutivo']).
carrera('José Pardo', ['Electrónica Industrial', 'Electrotecnia Industrial (Electricidad)', 'Metalurgia', 'Computación e Informática', 'Mecánica de Producción', 'Mecánica Automotriz', 'Construcción Civil']).

iestp('San Miguel', ['María Rosario Aráoz Pinto']).
carrera('María Rosario Aráoz Pinto', ['Administración de Empresas', 'Computación e Informática', 'Construcción Civil', 'Contabilidad', 'Diseño Gráfico', 'Diseño Publicitario', 'Mecánica Automotriz', 'Mecánica de Producción', 'Secretariado Ejecutivo']).

iestp('Pueblo Libre', ['Naciones Unidas']).
carrera('Naciones Unidas', ['Cosmética Dermatológica']).


% Distritos en Lima Este
distrito('Lima Este', ['Ate', 'Cieneguilla', 'San Juan de Lurigancho', 'Chaclacayo', 'Lurigancho']).

% IESTP y Carreras en Lima Este
iestp('Ate', ['Huaycán']).
carrera('Huaycán', ['Computación e Informática', 'Electrónica Industrial', 'Enfermería Técnica', 'Mecánica Automotriz']).

iestp('Cieneguilla', ['Magda Portal']).
carrera('Magda Portal', ['Administración de Servicios y Hostelería']).

iestp('San Juan de Lurigancho', ['Manuel Seoane Corrales']).
carrera('Manuel Seoane Corrales', ['Computación e Informática', 'Contabilidad', 'Electrotecnia Industrial', 'Enfermería Técnica', 'Mecánica de Producción', 'Química Industrial']).

iestp('Chaclacayo', ['Misioneros Monfortianos']).
carrera('Misioneros Monfortianos', ['Desarrollo de los Sistemas de Información', 'Enfermería Técnica', 'Mecatrónica Automotriz']).

iestp('Lurigancho', ['Ramiro Prialé Prialé']).
carrera('Ramiro Prialé Prialé', ['Computación e Informática', 'Contabilidad', 'Cosmética Dermatológica', 'Enfermería Técnica']).


% Distritos en Lima Norte
distrito('Lima Norte', ['Comas', 'San Martín de Porres', 'Los Olivos']).

% IESTP y Carreras en Lima Norte
iestp('Comas', ['Carlos Cueto Fernandini']).
carrera('Carlos Cueto Fernandini', ['Administración de Empresas', 'Computación e Informática', 'Contabilidad', 'Electrónica Industrial', 'Electrotecnia Industrial', 'Mecánica Automotriz', 'Mecánica de Producción', 'Metalurgia', 'Técnica en Laboratorio Clínico']).

iestp('San Martín de Porres', ['Luis Negreiros Vega']).
carrera('Luis Negreiros Vega', ['Computación e Informática', 'Contabilidad', 'Electrónica Industrial', 'Mecánica Automotriz', 'Mecánica de Producción']).

iestp('Los Olivos', ['Manuel Arévalo Cáceres']).
carrera('Manuel Arévalo Cáceres', ['Computación e Informática', 'Enfermería Técnica', 'Industrias Alimentarias']).


% Distritos en Lima Sur
distrito('Lima Sur', ['Chorrillos', 'San Juan de Miraflores', 'Villa María del Triunfo', 'Villa el Salvador', 'Lurín']).

% IESTP y Carreras en Lima Sur
iestp('Chorrillos', ['Antenor Orrego Espinoza']).
carrera('Antenor Orrego Espinoza', ['Administración Industrial', 'Computación e Informática', 'Contabilidad', 'Electrónica Industrial', 'Enfermería Técnica', 'Mecánica Automotriz', 'Técnica en Farmacia']).

iestp('San Juan de Miraflores', ['Gilda Liliana Ballivian Rosado']).
carrera('Gilda Liliana Ballivian Rosado', ['Administración de Empresas', 'Computación e Informática', 'Construcción Civil', 'Contabilidad', 'Electrónica Industrial', 'Electrotecnia Industrial', 'Mecánica Automotriz', 'Mecánica de Producción']).

iestp('Villa María del Triunfo', ['Juan Velasco Alvarado', 'San Francisco de Asís']).
carrera('Juan Velasco Alvarado', ['Computación e Informática', 'Contabilidad', 'Enfermería Técnica', 'Mecánica Automotriz', 'Técnica en Farmacia']).
carrera('San Francisco de Asís', ['Contabilidad', 'Electrotecnia Industrial']).


% ##### REGLAS #####

% Regla para encontrar los IESTP de la zona de Centro de Lima
buscar_iestp_de_una_zona(Zona, IESTP) :- distrito(Zona, Distritos), iestp(Distrito, IESTP), member(Distrito, Distritos).


% Regla para contar IESTP que dictan "Computación e Informática" en Cercado de Lima y Lima Este
contar_iestp_computacion_informatica(Zona, Cantidad) :-
    distrito(Zona, Distritos),
    findall(IESTP, (member(Distrito, Distritos), iestp(Distrito, IESTP), carrera(IESTP, Carreras), member('Computación e Informática', Carreras)), IESTPs),
    length(IESTPs, Cantidad).


% Regla para verificar si un IESTP pertenece a una zona específica
iestp_pertenece_a_zona(IESTP, Zona) :- distrito(Zona, Distrito), iestp(Distrito, IESTP).


% Regla para encontrar las carreras que son dictadas en común por tres IESTP
carreras_en_comun(IESTP1, IESTP2, IESTP3, Carreras) :-
    iestp(IESTP1, Carreras1),
    iestp(IESTP2, Carreras2),
    iestp(IESTP3, Carreras3),
    list_intersection(Carreras1, Carreras2, Temp),
    list_intersection(Temp, Carreras3, Carreras).

% Regla para obtener la intersección de dos listas
list_intersection([], _, []).
list_intersection([X|Xs], Ys, [X|Zs]) :- member(X, Ys), list_intersection(Xs, Ys, Zs).
list_intersection([X|Xs], Ys, Zs) :- \+ member(X, Ys), list_intersection(Xs, Ys, Zs).


% Regla para encontrar IESTP que dictan las mismas carreras profesionales
iestp_mismas_carreras(IESTP1, IESTP2) :-
    iestp(IESTP1, Carreras1),
    iestp(IESTP2, Carreras2),
    permutacion(Carreras1, Carreras2), IESTP1 \= IESTP2.

% Regla para verificar si dos listas son permutaciones una de la otra
permutacion(Xs, Ys) :- msort(Xs, Sorted), msort(Ys, Sorted).





