:- consult('./../data/dados_prolog.pl'). %fatos do recomendador

multiplaRecomendacao(Name, Ano, Preco, Kilometragem, Combustivel, Vendedor, Transmissao, Dono, Resposta) :-
  findall(Name-[Ano, Preco, Kilometragem, Combustivel, Vendedor, Transmissao, Dono], car(Name, Ano, Preco, Kilometragem, Combustivel, Vendedor, Transmissao, Dono), Resultado),
  keysort(Resultado, Sorted),
  
  Resposta = Sorted.

imprimirResultado([]).
imprimirResultado([Item | Resto]) :-
  write(Item),
  nl,
  imprimirResultado(Resto).

imprimirResultadoMultipla(Preco, Combustivel, Transmissao) :-
  multiplaRecomendacao(_, _, Preco, _, Combustivel, _, Transmissao, _, Resposta),
  imprimirResultado(Resposta).