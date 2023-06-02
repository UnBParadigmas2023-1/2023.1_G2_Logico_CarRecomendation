:- [recomendacoes/preco].
:- [recomendacoes/marca].
:- [recomendacoes/ano].
:- [recomendacoes/tipo_combustivel].
:- [recomendacoes/tipo_transmissao].
:- [recomendacoes/utils].
:- [recomendacoes/todos].
:- [recomendacoes/perfilUsuario].


car_recommendation :-
    write('Digite sua idade:'),    
    nl,
    read(Idade),
    write('Digite a marca do carro entre aspas simples e primeira letra em maiusculo:'),
    nl,
    read(Marca),
    write('Digite o ano do carro para o inicio do intervalo:'),
    nl,
    read(AnoInicial),
    verificar_ano_inicial(AnoInicial, AnoSubstituidoInicial),
    write('Digite o ano do carro para o final do intervalo:'),
    nl,
    read(AnoFinal),
    verificar_ano_Final(AnoFinal, AnoSubstituidoFinal),
    write('Digite o combustivel do carro entre aspas simples e primeira letra em maiusculo:'),
    nl,
    read(Combustivel),
    write('Você prefere optar por Conforto ou Economia:'),
    nl,
    read(Cambio),
    confortoEconomia(Cambio, Transmissao),
    faixaDePreco(Idade, PrecoInicial, PrecoFinal),
    imprimirResultadoTodos(Marca, AnoSubstituidoInicial, AnoSubstituidoFinal, PrecoInicial, PrecoFinal, Combustivel,Transmissao). %Esse regra Será um grande findall


imprimirIntersecaoMerge(Marca,Ano):-
    recomendaIntersecao(Marca, Ano, Resposta),
    imprimirResultado(Resposta).

recomendaIntersecao(Marca, Ano, Resposta) :-
    recomendaMarca(Marca, RespostaMarca),
    recomendaAno(Ano, RespostaAno),
    intersection(RespostaMarca, RespostaAno, Resposta).
    
