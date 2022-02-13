library verilog;
use verilog.vl_types.all;
entity CircuitoComparador is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        igual           : out    vl_logic;
        maior           : out    vl_logic;
        menor           : out    vl_logic
    );
end CircuitoComparador;
