library verilog;
use verilog.vl_types.all;
entity SomadorUmBit is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        tEntrada        : in     vl_logic;
        soma            : out    vl_logic;
        tSaida          : out    vl_logic
    );
end SomadorUmBit;
