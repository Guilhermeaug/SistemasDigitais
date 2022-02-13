/**
 Projeto: Multiplexador de 2 canais
 Nomes: Diogo Emanuel, Guilherme Augusto, Luiz Eduardo
 Data: 09/11/2021
**/

module mux_21(
  I0, I1, sel, S
);

//Entradas e saidas
input I0, I1, sel;
output S;

assign S = ~sel & I0 | sel & I1;

endmodule