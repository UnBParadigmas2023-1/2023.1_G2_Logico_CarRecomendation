use_module(library(readutil)).

:- consult('./../data/dados_prolog.pl'). 


% Predicado para recomendar veículos com base no tipo de combustível
recomendaCombustivel(Combustivel) :-
    findall(Name/[Preco, Combustivel, Transmissao], car(Name, Ano, Preco, _, Combustivel, _, Transmissao, _), Resultado),
    maplist(converter_para_par, Resultado, Pares),
    keysort(Pares, Sorted),
    imprimirResultado(Sorted).






% Regra de imprimir o resultado
imprimirResultado([]).
imprimirResultado([Item | Resto]) :-
    write(Item),
    nl,
    imprimirResultado(Resto).

% Regra de conversão para o maplist
converter_para_par(Chave/Itens, Chave-Itens).