library verilog;
use verilog.vl_types.all;
entity indicadorFarol is
    port(
        farol           : in     vl_logic;
        porta           : in     vl_logic;
        chave           : in     vl_logic;
        sinalizador     : out    vl_logic
    );
end indicadorFarol;
