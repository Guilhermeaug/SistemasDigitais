/* RegistradorDeslocamentoNaoBloqueante.v
	
Nomes: Diogo Emanuel, Guilherme Augusto, Luiz Eduardo
Data: 27/01/2022

Descricao do modulo:
Utiliza o modelo comportamental para criar um registrador de deslocamento de quatro bits, utilizando
o operador de atribuicao não bloqueante.

Entradas:
in - Entrada de dados inicial
reset - Entrada de reset para zerar o registrador e reinicializar o deslocamento
clock - Entrada de clock para atualizar o registrador

Saidas:
Q0 - Saida do registrador n°1 
Q1 - Saida do registrador n°2 
Q2 - Saida do registrador n°3
Q3 - Saida do registrador n°4 
*/

module RegistradorDeslocamentoNaoBloqueante(
  input in,
  input reset,
  input clock,

  output reg Q3,
  output reg Q2,
  output reg Q1,
  output reg Q0
);

always @(posedge clock or posedge reset) 
  begin
    if(reset) 
      begin
        Q3 <= 0;
        Q2 <= 0;
        Q1 <= 0;
        Q0 <= 0;
      end // if
    else 
      begin
        if (clock) 
          begin
            Q3 <= in;
            Q2 <= Q3;
            Q1 <= Q2;
            Q0 <= Q1;
          end // if
      end // end else
  end // always  

endmodule