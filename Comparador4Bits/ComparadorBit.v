module ComparadorBit (
  A, B, habilita, igual, maior, menor
);

input A, B; //Entradas dos numeros
input habilita; //Habilita o comparador
output igual, maior, menor; //Saidas possiveis

//Expressoes logicas de acordo com a tabela verdade
assign igual = habilita & (~A & ~B | A & B);
assign maior = habilita & (A & ~B);
assign menor = habilita & (~A & B);

  
endmodule