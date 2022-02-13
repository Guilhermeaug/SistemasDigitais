library verilog;
use verilog.vl_types.all;
entity RegistradorDeslocamentoNaoBloqueante is
    port(
        \in\            : in     vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        Q3              : out    vl_logic;
        Q2              : out    vl_logic;
        Q1              : out    vl_logic;
        Q0              : out    vl_logic
    );
end RegistradorDeslocamentoNaoBloqueante;
