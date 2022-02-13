/* SomadorCompleto.v
	
Nomes: Diogo Emanuel, Guilherme Augusto, Luiz Eduardo
Data: 21/12/2021

Descricao do modulo:
Modulo que implementa um somador completo de dois numeros de quatro bits utilizando estrutura hierarquica.

Entradas: 	
[3:0]a - primeiro numero
[3:0]b - segundo numero

Saidas:
soma[4:0] - a soma das duas entradas
*/

module SomadorCompleto(
  input [3:0]a,
  input [3:0]b,
  
  output [4:0]soma
);

  wire [2:0]fio;
  
  SomadorUmBit somadorUm(
    a[0],
    b[0],
    0,
    soma[0],
    fio[0]
  );

  SomadorUmBit somadorDois(
    a[1],
    b[1],
    fio[0],
    soma[1],
    fio[1]
  );

  SomadorUmBit somadorTres(
    a[2],
    b[2],
    fio[1],
    soma[2],
    fio[2]
  );

  SomadorUmBit somadorQuatro(
    a[3],
    b[3],
    fio[2],
    soma[3],
    soma[4]
  );

endmodule