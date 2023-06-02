:- consult('./../data/dados_prolog.pl'). %fatos do recomendador
:- [utils].


% car(Maruti 800 AC, 2007, 60000, 70000, Petrol, Individual, Manual, First Owner).
recomendaTodos(Marca, AnoInicial, AnoFinal, PrecoInicial, PrecoFinal, Combustivel, Trasmissao, Resposta) :- 
    findall(Nome-[Ano,Preco,Combustivel,Trasmissao], (
        car(Nome, Ano, Preco, _, Combustivel, _, Trasmissao, _),
        sub_atom(Nome, _, _, _, Marca),  %Verificar se Marca é uma substring de Nome
        Ano >= AnoInicial, Ano =< AnoFinal,
        Preco >= PrecoInicial, Preco =< PrecoFinal
    ), Resultado),

    %ordena o resultado
    keysort(Resultado, Sorted),

    remover_duplicados(Sorted, Result),

    Resposta = Result.

    %imprime o resultado

imprimirResultadoTodos(Marca, AnoInicial, AnoFinal, PrecoInicial, PrecoFinal, Combustivel, Trasmissao) :- 
    recomendaTodos(Marca, AnoInicial, AnoFinal, PrecoInicial, PrecoFinal, Combustivel, Trasmissao, Resposta),
    imprimirResultado(Resposta).