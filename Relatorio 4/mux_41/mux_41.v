/**
 Projeto: Multiplexador de 4 canais
 Nomes: Diogo Emanuel, Guilherme Augusto, Luiz Eduardo
 Data: 09/11/2021
**/

module mux_41(
  I0, I1, I2, I3, A, B, S
);

//Entradas e saidas
input I0, I1, I2, I3, A, B;
output S;

//Comunicacao com o outro modulo (saida do circuito)
wire S0, S1, S2;

mux_21 saidaZero(I0, I1, B, S0);
mux_21 saidaUm(I2, I3, B, S1);
mux_21 saida(S0, S1, A, S2);

assign S = S2;

  
endmodule