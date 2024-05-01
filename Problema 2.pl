%PERSONA (nombre, sexo)
%AMISTAD (nombre, nombre)
%SOSPECHOSO (nombre)
%
%Hechos
amistad(barbara,roberto).
amistad(barbara,juan).
amistad(barbara,maria).
amistad(susana,juan).
amistad(susana,pedro).
hombre(roberto).
hombre(juan).
hombre(pedro).
mujer(susana).
mujer(barbara).
mujer(maria).
%Reglas
amix_hombre(Persona1,Persona2):-
    amistad(Persona1,Persona2),
    hombre(Persona1);
    amistad(Persona1,Persona2),
    hombre(Persona2).

m_amix_susana(Mujer):-
    amix_hombre(X,susana),
    amix_hombre(X,Mujer),
    mujer(Mujer),
    susana \= Mujer;
    amix_hombre(susana,X),
    amix_hombre(Mujer,X),
    mujer(Mujer),
    susana \= Mujer.

amix_m_amix_m_susana(Persona):-
    amistad(X,Persona),
    m_amix_susana(X);
    amistad(Persona,X),
    m_amix_susana(X).
    
sosp(Persona):-
    (
    amix_hombre(Persona,susana);
    amix_hombre(susana,Persona)
    );
    (
    m_amix_susana(Persona)
    );
    (
    amix_m_amix_m_susana(Persona)
    ).
