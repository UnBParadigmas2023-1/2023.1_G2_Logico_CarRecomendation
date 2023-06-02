:- [recomendacoes/preco].
:- [recomendacoes/marca].
:- [recomendacoes/ano].
:- [recomendacoes/tipo_combustivel].
:- [recomendacoes/tipo_transmissao].
:- [recomendacoes/utils].
:- [recomendacoes/todos].

car_recommendation :-
    write('Digite a marca do carro entre aspas simples e primeira letra em maiusculo:'),
    nl,
    read(Marca),
    write('Digite o ano do carro para o inicio do intervalo:'),
    nl,
    read(AnoInicial),
    write('Digite o ano do carro para o final do intervalo:'),
    nl,
    read(AnoFinal),
    write('Digite o preco do carro para o inicio do intervalo:'),
    nl,
    read(PrecoInicial),
    write('Digite o preco do carro para o final do intervalo:'),
    nl,
    read(PrecoFinal),
    write('Digite o combustivel do carro entre aspas simples e primeira letra em maiusculo:'),
    nl,
    read(Combustivel),
    write('Digite Manual ou Automatico entre aspas simples:'),
    nl,
    read(Transmicao),
    imprimirResultadoTodos(Marca, AnoInicial, AnoFinal, PrecoInicial, PrecoFinal, Combustivel, Transmicao). %Esse regra Será um grande findall


imprimirIntersecaoMerge(Marca,Ano):-
    recomendaIntersecao(Marca, Ano, Resposta),
    imprimirResultado(Resposta).

recomendaIntersecao(Marca, Ano, Resposta) :-
    recomendaMarca(Marca, RespostaMarca),
    recomendaAno(Ano, RespostaAno),
    intersection(RespostaMarca, RespostaAno, Resposta).
    
