:- consult('./../data/dados_prolog.pl'). %fatos do recomendador


% car(Maruti 800 AC, 2007, 60000, 70000, Petrol, Individual, Manual, First Owner).
recomendaAno(Ano) :- 
    findall(Name/[Preco,Combustivel,Transmissao], car(Name,Ano,Preco,_,Combustivel,_,Transmissao,_), Resultado),
    
    % converter a lista de resultados em uma lista de pares chave-valor
    maplist(converter_para_par, Resultado, Pares),
    
    % ordenar a lista
    keysort(Pares, Sorted),
    
    % imprimir lista ordenada
    imprimirResultado(Sorted).


% Regra para buscar um certo intervalo em anos
recomendaAnoIntervalo(AnoInicial, AnoFinal) :- 
    findall(Name/[Ano,Preco,Combustivel,Transmissao], (car(Name,Ano,Preco,_,Combustivel,_,Transmissao,_), Ano >= AnoInicial, Ano =< AnoFinal), Resultado),
    %(Item, (sua_regra(Item), Item >= LimiteInferior, Item =< LimiteSuperior)
    
    
    % converter a lista de resultados em uma lista de pares chave-valor
    maplist(converter_para_par, Resultado, Pares),
    
    % ordenar a lista
    keysort(Pares, Sorted),
    
    % imprimir lista ordenada
    imprimirResultado(Sorted).

% Regra de imprimir o resultado
imprimirResultado([]).
imprimirResultado([Item | Resto]) :-
    write(Item),
    nl,
    imprimirResultado(Resto).

% Regra de conversão para o maplist
converter_para_par(Chave/Itens, Chave-Itens).