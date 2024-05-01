%Padre(padre,hijo).
%Madre(madre,hijo).
%Casado(marido,mujer).
%Lindo(x).

%Hechos establecidos
padre(marcelo,raul).
padre(marcelo,rita).
padre(juan,marcelo).
padre(juan,maria).
padre(raul,sergio).
madre(mirian,ricardo).
madre(rita,victor).
madre(rita,veronica).
casado().
lindo(mirian).
lindo(rita).

%Reglas
abuelo(Nieto,Abuelo) :- padre(Abuelo,Papa),padre(Papa,Nieto).
abuelo(Nieto,Abuelo) :- padre(Abuelo,Mama),madre(Mama,Nieto).
nieto(Nieto,Abuelo) :- abuelo(Nieto,Abuelo).
hermanx(Hermanx1, Hermanx2) :-
    padre(Padre, Hermanx1),
    padre(Padre, Hermanx2);
    madre(Madre, Hermanx1),
    madre(Madre, Hermanx2),
    Hermanx1 \= Hermanx2.	% \= (diferente)
hijx(Hijx, PadreMadre) :-
    (padre(PadreMadre, Hijx); 
    madre(PadreMadre, Hijx)).
casados_lind(Marido,Mujer,Hijx):-
    padre(Marido,Hijx),
    madre(Mujer,Hijx),
    lindo(Marido);
	padre(Marido,Hijx),
    madre(Mujer,Hijx),
    lindo(Mujer).

tiotia(TioTia, Sobrino) :-
    padre(Padre, Sobrino),
	hermanx(TioTia, Padre);
    madre(Madre, Sobrino),
    hermanx(TioTia, Madre).


