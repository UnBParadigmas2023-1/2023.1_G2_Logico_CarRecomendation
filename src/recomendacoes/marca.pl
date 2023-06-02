:- consult('./../data/dados_prolog.pl'). %fatos do recomendador
:- [ano].
:- [utils].


% car(Maruti 800 AC, 2007, 60000, 70000, Petrol, Individual, Manual, First Owner).
recomendaMarca(Marca, Resposta) :- 
    findall(Nome-[Ano,Preco,Combustivel,Transmissao], (
        car(Nome, Ano, Preco, _, Combustivel, _, Transmissao, _),
        sub_atom(Nome, _, _, _, Marca) %Verificar se Marca é uma substring de Nome
    ), Resultado),

    %ordena o resultado
    keysort(Resultado, Sorted),

    Resposta = Sorted.

    %imprime o resultado

imprimirResultadoMarca(Marca) :- 
    recomendaMarca(Marca, Resposta),
    imprimirResultado(Resposta).


%>>>>>>>>>>>>>>>> REGRAS P/ TESTE D INTERSECÇÃO...
imprimirIntersecaoMerge(Marca,Ano):-
    recomendaIntersecao(Marca, Ano, Resposta),
    imprimirResultado(Resposta).

recomendaIntersecao(Marca, Ano, Resposta) :-
    recomendaMarca(Marca, RespostaMarca),
    recomendaAno(Ano, RespostaAno),
    intersection(RespostaMarca, RespostaAno, Resposta).

%<<<<<<<<<<<<<<<<<<<<<<<<<<< FIM




% nl,
    % nl,
    % nl,
    % nl,
    % write('Intersecção dos resultados...'),