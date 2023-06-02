
% Imprime a resulta do recomendador. Pode ser usado para imprimir o resultado de uma intersecção
% A Resposta esperada está no padrão Chave-[Valor]
% A Chave usada é uma String e o valor é uma lista com [ano, preço, combustivel e trasmissão]
imprimirResultado([]).
imprimirResultado([Item | Resto]) :-
    write(Item),
    nl,
    imprimirResultado(Resto).

% Verifica se um elemento está presente em uma lista
membro(X, [X|_]).
membro(X, [_|T]) :- membro(X, T).

% Encontra a intersecção de duas listas
% inspirado na Fonte <https://www.dei.isep.ipp.pt/~asilva/page2/assets/AISC_tp_ext.pdf>. Acessado em 1 de junho 
intersection([], _, []).
intersection([H|T], List2, [H|Result]) :-
    membro(H, List2),
    intersection(T, List2, Result).
intersection([_|T], List2, Result) :-
    intersection(T, List2, Result).

