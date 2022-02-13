/* Decodificador.v
	
Nomes: Diogo Emanuel, Guilherme Augusto, Luiz Eduardo
Data: 20/01/2022

Descricao do modulo:
Utiliza o modelo fluxo de dados para criar um decodificador BCD

Entradas:
A - primeiro bit do numero de entrada
B - segundo bit do numero de entrada
C - terceiro bit do numero de entrada
D - quarto bit do numero de entrada

Saidas:
a - primeiro segmento do display
b - segundo segmento do display
c - terceiro segmento do display
d - quarto segmento do display
e - quinto segmento do display
f - sexto segmento do display
g - setimo segmento do display
*/

module Decodificador(
  input A,
  input B,
  input C,
  input D,

  output a,
  output b,
  output c,
  output d,
  output e,
  output f,
  output g
);

assign a = (~B & ~D) | C | (B & D) | A;
assign b = ~B | (~C &~D) | C&D | A; 
assign c = ~C | D | B | A;
assign d = ~B&~D | ~B&C | C&~D | B&~C&D | A;
assign e = (~B & ~D) | (C & ~D) | (A & C) | (A&B);
assign f = (~C & ~D) |(B & ~C) | (B&~D)| A;
assign g = (~B & C) |(B & ~C) |(B & ~D) | A;
  
endmodule