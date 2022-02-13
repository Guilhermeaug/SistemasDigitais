/**
Projeto: Indicador de Farol
Nomes: Diogo Emanuel, Guilherme Augusto, Luiz Eduardo
Data: 11/11/2021
**/
module indicadorFarol(farol, porta, chave, sinalizador);

input farol, porta, chave;
//Farol: 0 - Desligado, 1 - Ligado
//Porta: 0 - Aberta, 1 - Fechada
//Chave: 0 - Fora da ignicao, 1 - Na ignicao
output sinalizador;

assign sinalizador = (farol & ~porta & ~chave) | (farol & ~porta & chave) | (farol & porta & ~chave);

endmodule