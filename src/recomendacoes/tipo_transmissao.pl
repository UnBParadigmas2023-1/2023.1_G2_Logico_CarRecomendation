:- consult('./../data/dados_prolog.pl'). %fatos do recomendador

recommend_cars_with_transmission(Transmissao, Resposta) :-
    findall(Name-[Preco,Combustivel,Transmissao], car(Name, _, Preco, _, Combustivel, _, Transmissao, _), Resultado),

    keysort(Resultado, Sorted),

    Resposta = Sorted.

imprimirResultado([]).
imprimirResultado([Item | Resto]) :-
    write(Item),
    nl,
    imprimirResultado(Resto).

imprimirResultadoTransmissao(Transmissao) :-
    recommend_cars_with_transmission(Transmissao, Resposta),
    imprimirResultado(Resposta).
