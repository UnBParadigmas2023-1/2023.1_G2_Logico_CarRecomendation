:- consult('./../data/dados_prolog.pl').
:- [utils].

% car(Maruti 800 AC, 2007, 60000, 70000, Petrol, Individual, Manual, First Owner).
recomendaPreco(Preco) :- 
    findall(Name/[Preco,Combustivel,Transmissao], car(Name,_,Preco,_,Combustivel,_,Transmissao,_), Resultado),
    
    % converter a lista de resultados em uma lista de pares chave-valor
    maplist(converter_para_par, Resultado, Pares),
    
    % ordenar a lista
    keysort(Pares, Sorted),
    
    % imprimir lista ordenada
    imprimirResultado(Sorted).


% Regra para buscar um certo intervalo em preços
recomendaPrecoIntervalo(PrecoInicial, PrecoFinal) :- 
    findall(Name/[Ano,Preco,Combustivel,Transmissao], (car(Name,Ano,Preco,_,Combustivel,_,Transmissao,_), Preco >= PrecoInicial, Preco =< PrecoFinal), Resultado),
    %(Item, (sua_regra(Item), Item >= LimiteInferior, Item =< LimiteSuperior)
    
    
    % converter a lista de resultados em uma lista de pares chave-valor
    maplist(converter_para_par, Resultado, Pares),
    
    % ordenar a lista
    keysort(Pares, Sorted),
    
    % imprimir lista ordenada
    imprimirResultado(Sorted).

% Regra de conversão para o maplist
converter_para_par(Chave/Itens, Chave-Itens).
