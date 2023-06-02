:- consult('./../data/dados_prolog.pl'). %fatos do recomendador
:- [utils].


% car(Maruti 800 AC, 2007, 60000, 70000, Petrol, Individual, Manual, First Owner).
recomendaTodos(Marca, AnoInicial, AnoFinal, PrecoInicial, PrecoFinal, Combustivel, Transmicao, Resposta) :- 
    findall(Nome-[Ano,Preco,Combustivel,Transmicao], (
        car(Nome, Ano, Preco, _, Combustivel, _, Transmicao, _),
        sub_atom(Nome, _, _, _, Marca),  %Verificar se Marca é uma substring de Nome
        Ano >= AnoInicial, Ano =< AnoFinal,
        Preco >= PrecoInicial, Preco =< PrecoFinal
    ), Resultado),

    %ordena o resultado
    keysort(Resultado, Sorted),

    Resposta = Sorted.

    %imprime o resultado

imprimirResultadoTodos(Marca, AnoInicial, AnoFinal, PrecoInicial, PrecoFinal, Combustivel, Transmicao) :- 
    recomendaTodos(Marca, AnoInicial, AnoFinal, PrecoInicial, PrecoFinal, Combustivel, Transmicao, Resposta),
    imprimirResultado(Resposta).