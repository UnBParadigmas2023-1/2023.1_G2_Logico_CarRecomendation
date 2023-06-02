:- consult('./../data/dados_prolog.pl'). 
:- [utils].

% Predicado para recomendar veículos com base no tipo de combustível
recomendaCombustivel(Combustivel, Resposta) :-
    findall(Name-[Ano, Preco, Combustivel, Transmissao], car(Name, Ano, Preco, _, Combustivel, _, Transmissao, _), Resultado),

    keysort(Resultado, Sorted),

    Resposta = Sorted.


imprimirResultadoTransmissao(Combustivel) :-
    recomendaCombustivel(Combustivel, Resposta),
    imprimirResultado(Resposta).

