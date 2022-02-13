/* SomadorUmBit.v
	
Nomes: Diogo Emanuel, Guilherme Augusto, Luiz Eduardo
Data: 21/12/2021

Descricao do modulo:
Somador de dois numeros binarios de um bit

Entradas: 	
a - primeiro numero
b - segundo numero
tEntrada - carry in

Saidas:
soma - a soma das duas entradas mais o transporte de entrada
tSaida - carry out
*/

module SomadorUmBit(
	input a,
	input b,
	input tEntrada,
	output soma,
	output tSaida
);

	assign soma = (a ^ b) ^ tEntrada; //soma minimizada por XOR
	assign tSaida = (b & tEntrada) | (a & tEntrada) | (a & b); //soma minimada com mapa karnaugh

endmodule