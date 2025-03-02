/*
Lorraine: mãe de Marty McFly
Arthur McFly: pai de George McFly e avô de Marty McFly 
Dave McFly: filho de George e Lorraine 
George McFly: pai de Marty McFly
Linda McFly: irmã de Marty McFly filha de George e Lorraine
Maggie McFly: esposa de Seamus McFly e tataravó de Marty McFly
Marlene McFly: filha de Marty McFly e Jennifer Parker
Marta McFly: neta de Marty McFly
Marty McFly: protagonista principal
Seamus McFly: marido de Maggie
Sylvia Minski: mãe de George McFly
William McFly: filho de Seamus McFly e Maggie McFly
Jennifer Parker: mãe de Marlene McFly e Marty McFly Jr 

*/

progenitor(seamus, william).
progenitor(maggie, william).

progenitor(william, arthur).
progenitor(eliza, arthur).

progenitor(arthur, george).
progenitor(sylvia, george).


progenitor(lorraine, marty).
progenitor(lorraine, dave).
progenitor(lorraine, linda).

progenitor(george, marty).
progenitor(george, dave).
progenitor(george, linda).

progenitor(marty, marlene).
progenitor(marty, martyjr).

progenitor(jennifer, martyjr).
progenitor(jennifer, marlene).

masculino(seamus).
masculino(william).
masculino(arthur).
masculino(george).
masculino(marty).
masculino(martyjr).
masculino(dave).

feminino(mggie).
feminino(eliza).
feminino(sylvia).
feminino(lorraine).
feminino(linda).
feminino(marlene).
feminino(jennifer).

filho(Y, X) :-
    progenitor(X, Y),
    masculino(Y).

filha(Y, X) :-
    progenitor(X, Y),
    feminino(Y).

mae(X, Y) :-
    progenitor(X, Y),
    feminino(X).

pai(X, Y) :-
    progenitor(X, Y),
    masculino(X).


avô(X, Z) :-
    progenitor(X, Y),
    progenitor(Y, Z),
    masculino(X).

avó(X, Z) :-
    progenitor(X, Y),
    progenitor(Y, Z),
    feminino(X).

irmao(X, Y) :-
    progenitor(Z, X),
    progenitor(Z, Y),
    masculino(X).

irma(X, Y) :-
    progenitor(Z, X),
    progenitor(Z, Y),
    feminino(X).

antepassado(X, Z) :-
    progenitor(X, Z).

antepassado(X, Z) :-
    progenitor(X, Y),
    antepassado(Y, Z).

tio(Z, Y) :- 
    progenitor(X, Z), 
    progenitor(X, V), 
    progenitor(V, Y), 
    Z \== V. 