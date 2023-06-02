pessoa(estudante, X) :- X >= 18, X =< 25.
pessoa(jovem_adulto, X) :- X >= 26, X =< 35.
pessoa(adulto, X) :- X >= 36.
ehAdulto(X) :- pessoa(adulto, X).
ehJovemAdulto(X) :- pessoa(jovem_adulto, X).
ehEstudante(X) :- pessoa(estudante, X).

faixaDePreco(X, P1, P2) :- 
    (ehEstudante(X), P1=20000, P2=50000);
    (ehJovemAdulto(X), P1=60000, P2=140000);
    (ehAdulto(X), P1=150000, P2=10000000).

confortoEconomia(X, Cambio) :-
    (X = 'Conforto', Cambio = 'Automatic');
    (X = 'Economia', Cambio = 'Manual').
