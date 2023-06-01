use_module(library(readutil)).

:- [src/data/dados_prolog].
:- (dynamic fuel/1, car/8).


% Predicado para recomendar veículos com base no tipo de combustível
recommend_vehicle_by_fuel(Fuel ) :-
    findall(Car,car(_,_,_,_,Fuel,_,_,_),Cars),.