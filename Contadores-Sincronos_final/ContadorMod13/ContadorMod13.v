/* ContadorMod13.v
	
Nomes: Diogo Emanuel, Guilherme Augusto, Luiz Eduardo
Data: 12/02/2022

Descricao do modulo:
Utiliza o modelo comportamental para criar um contador sincrono de quatro bits, que consegue
contar de 0 ate 12.

Entradas:
clock -> controla a passagem de tempo do circuito
reset -> zera a contagem
preset -> define o valor da contagem como 12

Saidas:
counter -> contador de quatro bits
*/

module ContadorMod13(
  input clock,
  input reset,
  input preset,

  output reg [3:0] counter
);

always @(posedge clock or posedge reset or posedge preset) 
  begin
    if (reset == 1'b1) 
      begin
        counter <= 4'b0000;
      end // if
    else if (preset == 1'b1)
      begin
        counter <= 4'b1100;
      end // else if
    else if (counter == 4'b1100)
      begin
        counter <= 4'b0000;
      end // else if
    else 
      begin
        counter <= counter + 1'b1;
      end // else    
  end // always

endmodule