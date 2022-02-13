/*
  Testbench para o MODULO ContadorMod16

  module ContadorMod16(
    input clock,
    input reset,
    input preset,

    output reg [3:0] counter
  );

*/
module TB_contadorMod16;
 
	reg TB_clock, TB_reset, TB_preset;
	wire [3:0] TB_counter;

  integer i = 0;

	ContadorMod16 dut(TB_clock, TB_reset, TB_preset, TB_counter);
 
	initial
		begin
      
      TB_reset = 1'b1; TB_preset = 1'b0; TB_clock = 1'b0; # 25;

      for (i = 0; i < 30; i = i + 1) 
        begin
          TB_reset = 1'b0;
          TB_preset = 1'b0;

          if(TB_clock == 1'b1)
            begin
              TB_clock <= 1'b0;
            end // if
          else
            begin
              TB_clock <= 1'b1;
            end // else
          
          # 25;

        end // for

      TB_reset = 1'b1; TB_preset = 1'b0; TB_clock = 1'b1; # 25;

      for(i = 0; i < 10; i = i + 1)
        begin
          TB_reset = 1'b0;

          if(TB_counter == 4'b0010)
            begin
              TB_preset = 1'b1;
            end // if
          else
            begin
              TB_preset = 1'b0;
            end // else

          if(TB_clock == 1'b1)
            begin
              TB_clock <= 1'b0;
            end // if
          else
            begin
              TB_clock <= 1'b1;
            end // else
          
          # 25;
        
        end // for
      
		end // initial

endmodule