/**
Projeto: Comparador de bits
Nomes: Diogo Emanuel, Guilherme Augusto, Luiz Eduardo
Data: 18/11/2021
**/
module CircuitoComparador (
  A, B, igual, maior, menor
);

input A, B; //Entradas dos numeros
output igual, maior, menor; //Saidas possiveis

//Expressoes logicas de acordo com a tabela verdade
assign igual = ~A & ~B | A & B;
assign maior = A & ~B;
assign menor = ~A & B;

  
endmodule