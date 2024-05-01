:- dynamic conexion/3.

conexion(nueva_cordoba, alta_cordoba, 3000).
conexion(nueva_cordoba, centro, 200).
conexion(centro, villa_allende, 4000).
conexion(alta_cordoba, villa_allende, 750).
conexion(nueva_cordoba, arguello, 5000).
conexion(arguello, villa_allende, 3000).
conexion(nueva_cordoba, las_palmas, 4000).
conexion(las_palmas, villa_allende, 3200).
conexion(nueva_cordoba, los_platanos, 2000).
conexion(los_platanos, san_fernando, 3000).
conexion(san_fernando, villa_allende, 1700).

camino_corto(X, Y, Camino, Distancia) :-
    findall([P, D], camino(X, Y, P, D), ListaCaminos),
    sort(2, @=<, ListaCaminos, [[Camino, Distancia] | _]).

camino_largo(X, Y, Camino, Distancia) :-
    findall([P, D], camino(X, Y, P, D), ListaCaminos),
    sort(2, @>=, ListaCaminos, [[Camino, Distancia] | _]).

camino(X, Y, [X, Y], D) :- 
    conexion(X, Y, D).
camino(X, Y, [X | CaminoRestante], D) :-
    conexion(X, Z, H),
    camino(Z, Y, CaminoRestante, M),
    D is M + H.
