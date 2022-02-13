/**
 Projeto: Comparador de Magnitude de 4 bits
 Nomes: Diogo Emanuel, Guilherme Augusto, Luiz Eduardo
 Data: 25/11/2021
 **/

module ComparadorMagnitude (
  A, B, igual, maior, menor
);

//Entradas dos numeros
input [3:0]A;
input [3:0]B; 

output igual, maior, menor; //Saidas possiveis
	
//Variaveis auxiliares
wire [3:0]aux_igual;
wire [3:0]aux_maior; 
wire [3:0]aux_menor;

ComparadorBit bit3 (A[3], B[3], 1, aux_igual[3], aux_maior[3], aux_menor[3]);
ComparadorBit bit2 (A[2], B[2], aux_igual[3], aux_igual[2], aux_maior[2], aux_menor[2]);
ComparadorBit bit1 (A[1], B[1], aux_igual[2], aux_igual[1], aux_maior[1], aux_menor[1]);
ComparadorBit bit0 (A[0], B[0], aux_igual[1], aux_igual[0], aux_maior[0], aux_menor[0]);

assign igual = &aux_igual;
assign maior = |aux_maior;
assign menor = |aux_menor;
  
endmodule
