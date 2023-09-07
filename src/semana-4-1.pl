/* ECHOS */
padecer(pedro,gripe).
padecer(pedro,hepatitis).
padecer(juan,hepatitis).
padecer(maria,gripe).
padecer(carlos,intoxicacion).

sintoma(fiebre, gripe).
sintoma(cansancio, hepatitis).
sintoma(diarrea, intoxicacion).
sintoma(cansancio, gripe).

suprime(aspirina, fiebre).
suprime(lomotil, diarrea).

/* REGLAS */
alivia(Farmaco, Persona) :- padecer(Persona, Enfermedad), sintoma(Sintoma, Enfermedad), suprime(Farmaco, Sintoma).
deberia_tomar(Persona, Farmaco) :- padecer(Persona, Enfermedad), alivia(Farmaco, Persona).
tiene_sintomas(Persona, Sintomas) :- padecer(Persona, Enfermedad), sintoma(Sintomas, Enfermedad).


/* RESPUESTAS

1- padecer(pedro,Enfermedad),padecer(maria,Enfermedad).
2- padecer(Persona,gripe).
3- tiene_sintomas(pedro, Sintomas).
4- tiene_sintomas(Persona, diarrea).
5- tiene_sintomas(Persona, cansancio).
6- alivia(Farmaco, pedro).
7- padecer(juan,Enfermedad),padecer(maria,Enfermedad),sintoma(Sintomas,Enfermedad),sintoma(Sintomas,Enfermedad).

*/