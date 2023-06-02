:- consult('./../data/dados_prolog.pl'). %fatos do recomendador
:- [utils].

recommend_cars_with_transmission(Transmissao, Resposta) :-
    findall(Name-[Ano, Preco,Combustivel,Transmissao], car(Name, Ano, Preco, _, Combustivel, _, Transmissao, _), Resultado),

    keysort(Resultado, Sorted),

    Resposta = Sorted.

imprimirResultadoTransmissao(Transmissao) :-
    recommend_cars_with_transmission(Transmissao, Resposta),
    imprimirResultado(Resposta).
