/* SomadorSubtratorCompleto.v
	
Nomes: Diogo Emanuel, Guilherme Augusto, Luiz Eduardo
Data: 13/01/2022

Descricao do modulo:
Realiza a soma ou a subtração de dois numeros de quatro bits.

Entradas:
A - primeiro numero de quatro bits
B - segundo numero de quatro bits 	
M - sinal enable para indicar soma caso 0 ou subtração caso 1

Saidas:
resultado - resultado da soma ou subtracao com cinco bits, levando em conta a possibilidade de overflow
*/

module SomadorSubtratorCompleto(
  input [3:0]A,
  input [3:0]B,
  input M,
  
  output [4:0]resultado
);

  wire [4:0]soma;
  wire [4:0]tEntrada;

  SomadorUmBit somadorUm(
    A[0],
    B[0] ^ M,
    M,
    soma[0],
    tEntrada[0]
  );

  SomadorUmBit somadorDois(
    A[1],
    B[1] ^ M,
    tEntrada[0],
    soma[1],
    tEntrada[1]
  );

  SomadorUmBit somadorTres(
    A[2],
    B[2] ^ M,
    tEntrada[1],
    soma[2],
    tEntrada[2]
  );

  SomadorUmBit somadorQuatro(
    A[3],
    B[3] ^ M,
    tEntrada[2],
    soma[3],
    tEntrada[3]
  );

  // utilizado para verificar overflow durante a soma
  SomadorUmBit somadorCinco(
    0,
    M,
    tEntrada[3],
    soma[4],
    tEntrada[4]
  );

  assign resultado[0] = soma[0];
  assign resultado[1] = soma[1];
  assign resultado[2] = soma[2];
  assign resultado[3] = soma[3];
  assign resultado[4] = soma[4];

endmodule