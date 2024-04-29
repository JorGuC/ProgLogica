planta(geranio).
planta(girasol).
planta(gingseng).

%beneficios

%Geranio
beneficio('estimulante sudorífico').
beneficio('estimulante digestivo').
beneficio('hemorragias nasales').
beneficio('hemorragias internas y externas').
%Girasol
beneficio(hemicranea).
beneficio('trastornos nerviosos').
beneficio('dolores de estómago').
beneficio('accesos febriles').
beneficio(llagas).
%Gingseng
beneficio(panacea).
beneficio('Tónico cerebral').
beneficio('Excitante digestivo').
beneficio(afrodisiaco).

%Relacion planta - beneficio
planta_beneficio(geranio,'estimulante sudorífico').
planta_beneficio(geranio,'estimulante digestivo').
planta_beneficio(geranio,'hemorragias nasales').
planta_beneficio(geranio,'hemorragias internas y externas').

planta_beneficio(girasol,hemicranea).
planta_beneficio(girasol,'trastornos nerviosos').
planta_beneficio(girasol,'dolores de estómago').
planta_beneficio(girasol,'accesos febriles').
planta_beneficio(girasol,llagas).

planta_beneficio(gingseng,panacea).
planta_beneficio(gingseng,'Tónico cerebral').
planta_beneficio(gingseng,'Excitante digestivo').
planta_beneficio(gingseng,afrodisiaco).


%Metodo de empleo

%Geranio
empleo('estimulante sudorífico','se hace un té').
empleo('estimulante digestivo','se hace un té').
empleo('hemorragias nasales','el polvo de sus hojas se usa como si fuera rapé').
empleo('hemorragias internas y externas','se hace un té').
%Girasol
empleo(hemicranea,'comer la semillas crudas').
empleo('trastornos nerviosos','comer la semillas crudas').
empleo('dolores de estómago','comer la semillas crudas').
empleo('accesos febriles','comer la semillas crudas').
empleo(llagas,'comer la semillas crudas').
empleo(hemicranea,'se hace un té con las hojas tiernas').
empleo('trastornos nerviosos','se hace un té con las hojas tiernas').
empleo('dolores de estómago','se hace un té con las hojas tiernas').
empleo('accesos febriles','se hace un té con las hojas tiernas').
empleo(llagas,'se hace un té con las hojas tiernas').
%Gingseng
empleo(panacea,'se hace un té').
empleo('Tónico cerebral','se hace un té').
empleo('Excitante digestivo','se hace un té').
empleo(afrodisiaco,'se hace un té').
empleo(panacea,'se come').
empleo('Tónico cerebral','se come').
empleo('Excitante digestivo','se come').
empleo(afrodisiaco,'se come').

tratamiento(Planta,Empleo,Beneficio) :-
    planta_beneficio(Planta,Beneficio),
    empleo(Beneficio,Empleo).



