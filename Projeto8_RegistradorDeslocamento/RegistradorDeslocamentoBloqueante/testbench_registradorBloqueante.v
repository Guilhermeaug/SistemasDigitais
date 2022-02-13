/*
Testbench para o MODULO RegistradorDeslocamentoBloqueante, deslocador de 4 bits

  module RegistradorDeslocamentoBloqueante(in, reset, clock, Q3, Q2, Q1, Q0) com:
	 ENTRADAS:
	 in,reset,clock

	 SAÃDAS:
	 Q3,Q2,Q1,Q0
*/
module TB_regis;
 
	reg TB_reset, TB_clock, TB_in;
	wire TB_Q3,TB_Q2,TB_Q1,TB_Q0;

	// parameter stop_time = 1000;
	// initial # stop_time ;

	RegistradorDeslocamentoBloqueante dut(TB_in, TB_reset, TB_clock, TB_Q3, TB_Q2, TB_Q1, TB_Q0);
 
	initial
		begin
			TB_reset = 1'b0;		TB_clock = 1'b0;    	TB_in = 1'b0;   #20
			TB_reset = 1'b1;		TB_clock = 1'b1;  	TB_in = 1'b0;   #20
			TB_reset = 1'b0;		TB_clock = 1'b0;  	TB_in = 1'b1;   #20
			TB_reset = 1'b0;		TB_clock = 1'b1;  	TB_in = 1'b1;   #20
			TB_reset = 1'b0;		TB_clock = 1'b0;  	TB_in = 1'b0;   #20
			TB_reset = 1'b0;		TB_clock = 1'b1;  	TB_in = 1'b0;	 #20
			TB_reset = 1'b0;		TB_clock = 1'b0; 		TB_in = 1'b0;	 #20
			TB_reset = 1'b0;		TB_clock = 1'b1;  	TB_in = 1'b0;	 #20
			TB_reset = 1'b0;		TB_clock = 1'b0; 	 	TB_in = 1'b0;	 #20
			TB_reset = 1'b0;		TB_clock = 1'b1; 		TB_in = 1'b0;	 #20
			TB_reset = 1'b0;		TB_clock = 1'b0; 	 	TB_in = 1'b0;	 #20
			TB_reset = 1'b0;		TB_clock = 1'b1; 		TB_in = 1'b0;	 #20
			TB_reset = 1'b0;		TB_clock = 1'b0; 	 	TB_in = 1'b0;	 #20
			TB_reset = 1'b0;		TB_clock = 1'b1; 		TB_in = 1'b0;	 #20;
		end // initial

endmodule