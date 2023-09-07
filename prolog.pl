/* 
##### REGLAS ##### 

1. Nombre de objetos y reglas deben de empezar con minuscula.
2. Primero se escribe relacion y despues objeto.
3. Se puede usar _ para separar arreglos.
4. Siempre termina en punto.
5. Las variables inician en mayuscula.
6. Hay una variable anonima que es: _


##### SINTAXIS #####
AND => ,
OR  => ;

*/


/* ECHOS */
es_perro(rocky).
es_gato(cat).

/* 
Se lee => el elefante es mas grande que el caballo.
Se lee => el oso es mas grande que el raton y el perro.
*/
mas_grande(elefante,caballo).
mas_grande(caballo,perro).
mas_grande(perro,raton).
mas_grande(oso,raton,perro).

/***** REGLAS *****/

/* 
Se lee => el elefante es mas grande que el caballo.
Se lee => el oso es mas grande que el raton y el perro.
*/

mega_grande(A,C) :- mas_grande(A,B),mas_grande(B,C).



/* Constantes */

rampago.
libusa.
lili.
barbo.
vacu.

/* Predicados */

perro(rampago).
perro(libusa).
perro(lili).

gato(barbo).

pez(vacu).


/* Predicaado con mas de un argumento */

amistad(rampago,libusa).
amistad(rampago,lili).
amistad(barbo,vacu).

