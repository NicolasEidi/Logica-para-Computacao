// Agent sample_agent in project main

/* Initial beliefs and rules */
existe(pedestre).
existe(ciclista).
existe(sinal).

/* Initial goals */

!ativaSensor.

/* Plans */
+!ativaSensor: existe(pedestre) | existe(ciclista) | existe(sinal) <-
    .print("avisar Veiculo Autonomo -> caminho bloqueado a frente");
    .send(veiculo_autonomo, achieve, trajetoBloqueado);
    -existe(pedestre);
    -existe(ciclista);
    -existe(sinal);
    !ativaSensor.


+!ativaSensor: not existe(pedestre) & not existe(ciclista) <-
    .print("avisar Veiculo Autonomo -> caminho livre");
    .send(veiculo_autonomo, achieve, trajetoLivre).
    


{ include("$jacamo/templates/common-cartago.asl") }
{ include("$jacamo/templates/common-moise.asl") }
