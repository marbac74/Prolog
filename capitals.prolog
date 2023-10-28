% File capitals.pro
% Knowledge base of states and capitals

:- dynamic(capital_of/2).

capital_of(georgia, atlanta).
capital_of(california, sacramento).
capital_of(florida, tallahassee).
capital_of(maine, augusta).

print_capitals :-
    capital_of(State, City),
    write(City),
    write(' is the capital of '),
    write(State),
    nl,
    fail.