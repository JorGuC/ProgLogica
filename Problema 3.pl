

tiene_carro(juan).
tiene_carro(josé).
tiene_carro(jeremías).
tiene_carro(jorge).
amigos(anacleta, juan).
amigos(anastasia, josé).
amigos(analía, juan).
amigos(roberto, jeremías).
amigos(ana, josé).
amigos(josé, ana).
amigos(roberto, raúl).
amigos(analía, juan).
vive_cerca(aída).
vive_cerca(analía).
trae_el_carro(juan).
trae_el_carro(josé).
trae_el_carro(jeremías).

bebió(juan, vino).
bebió(josé, jugo).
bebió(jeremías, jugo).



bebida_alcoholica(vino).

llega_a_casa(Persona) :-
    trae_el_carro(Persona),
    tiene_carro(Persona),
    \+ bebió_alcohol(Persona);
    vive_cerca(Persona);
	amigos(Persona, Conductor),
    llega_a_casa_rec(Conductor, [Conductor], []).
    
llega_a_casa_rec(Persona, _, _) :-
    tiene_carro(Persona).	%caso base

llega_a_casa_rec(Persona, Visitados, _) :-	%recursivo
    amigos(Otro, Persona),
    \+ member(Otro, Visitados),
    llega_a_casa_rec(Otro, [Otro | Visitados], []).

bebió_alcohol(Persona) :-
    bebió(Persona, Bebida),
    bebida_alcoholica(Bebida).


llegan(LleganSeguros) :-
    findall(Persona, llega_a_casa(Persona), LleganSeguros).



