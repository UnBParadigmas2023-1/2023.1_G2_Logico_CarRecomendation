:- consult('./../data/dados_prolog.pl'). %fatos do recomendador
:- [utils].


% car(Maruti 800 AC, 2007, 60000, 70000, Petrol, Individual, Manual, First Owner).
recomendaAno(Ano, Resposta) :- 
    findall(Name-[Ano,Preco,Combustivel,Transmissao], car(Name,Ano,Preco,_,Combustivel,_,Transmissao,_), Resultado),
    
    % ordenar a lista
    keysort(Resultado, Sorted),
    
    % imprimir lista ordenada
    Resposta = Sorted.


% Regra para buscar um certo intervalo em anos
recomendaAnoIntervalo(AnoInicial, AnoFinal, Resposta) :- 
    findall(Name-[Ano,Preco,Combustivel,Transmissao], (
        car(Name,Ano,Preco,_,Combustivel,_,Transmissao,_),
         Ano >= AnoInicial, Ano =< AnoFinal
    ), Resultado),
    %(Item, (sua_regra(Item), Item >= LimiteInferior, Item =< LimiteSuperior)
    
    % ordenar a lista
    keysort(Resultado, Sorted),
    
    Resposta = Sorted.
  

% imprimir lista ordenada
imprimirResultadoAno(Ano) :- 
    recomendaAno(Ano, Resposta),
    imprimirResultado(Resposta).

% imprimir lista ordenada
imprimirResultadoAno2(AnoInicial, AnoFinal) :- 
    recomendaAnoIntervalo(AnoInicial, AnoFinal, Resposta),
    imprimirResultado(Resposta).