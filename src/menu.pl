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
    write('Digite a marca do carro de preferencia entre aspas simples e primeira letra em maiusculo:'),
    nl,
    read(Marca),
    write('Digite o ano de lancamento do carro para o inicio do intervalo.'),
    nl,
    write('Caso contrario, digite Any:'),
    nl,
    read(AnoInicial),
    verificar_ano_inicial(AnoInicial, AnoSubstituidoInicial),
    write('Digite o ano de lancamento do carro para o final do intervalo.'),
    nl,
    write('Caso contrario, digite Any:'),
    nl,
    read(AnoFinal),
    verificar_ano_Final(AnoFinal, AnoSubstituidoFinal),
    write('Escolha o combustivel (Electric, Diesel, Petrol, LPG ou CNG)'),
    nl,
    write('Digite o combustivel do carro entre aspas simples e primeira letra em maiusculo:'),
    nl,
    read(Combustivel),
    write('Você prefere optar por Conforto ou Economia?'),
    nl,
    read(Cambio),
    confortoEconomia(Cambio, Transmissao),
    faixaDePreco(Idade, PrecoInicial, PrecoFinal),
    write('Modelo do Carro - [Ano, Preco, Combustivel, Transmissao]'),
    nl,
    imprimirResultadoTodos(Marca, AnoSubstituidoInicial, AnoSubstituidoFinal, PrecoInicial, PrecoFinal, Combustivel,Transmissao). %Esse regra Será um grande findall


imprimirIntersecaoMerge(Marca,Ano):-
    recomendaIntersecao(Marca, Ano, Resposta),
    imprimirResultado(Resposta).

recomendaIntersecao(Marca, Ano, Resposta) :-
    recomendaMarca(Marca, RespostaMarca),
    recomendaAno(Ano, RespostaAno),
    intersection(RespostaMarca, RespostaAno, Resposta).
    
