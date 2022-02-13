library verilog;
use verilog.vl_types.all;
entity mux_41 is
    port(
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        S               : out    vl_logic
    );
end mux_41;
