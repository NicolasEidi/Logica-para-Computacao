// Agent sample_agent in project main

/* Initial beliefs and rules */

/* Initial goals */

cruzamento(bloqueado).


/* Plans */

+!trajetoLivre [source(sensorVA)] : cruzamento(livre) <-
    .print("Pode passar o cruzamento. ").

+!trajetoBloqueado [source(sensorVA)] : cruzamento(bloqueado) <-
    .print("Transito bloqueado, esperar. ");
    -cruzamento(bloqueado);
    +cruzamento(livre).

{ include("$jacamo/templates/common-cartago.asl") }
{ include("$jacamo/templates/common-moise.asl") }
