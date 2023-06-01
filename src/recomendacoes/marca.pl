:- consult('./../data/dados_prolog.pl'). %fatos do recomendador
:- [ano].


% car(Maruti 800 AC, 2007, 60000, 70000, Petrol, Individual, Manual, First Owner).
recomendaMarca(Marca) :- 
    findall(Nome-[Ano,Preco,Combustivel,Transmissao], (
        car(Nome, Ano, Preco, _, Combustivel, _, Transmissao, _),
        sub_atom(Nome, _, _, _, Marca) %Verificar se Marca é uma substring de Nome
    ), Resultado),

    %ordena o resultado
    keysort(Resultado, Sorted),

    %imprime o resultado
    imprimirResultado(Sorted) .


imprimirResultado([]).
imprimirResultado([Item | Resto]) :-
    write(Item),
    nl,
    imprimirResultado(Resto).