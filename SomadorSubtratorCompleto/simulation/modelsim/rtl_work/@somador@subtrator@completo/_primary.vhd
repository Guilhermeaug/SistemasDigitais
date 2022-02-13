library verilog;
use verilog.vl_types.all;
entity SomadorSubtratorCompleto is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        M               : in     vl_logic;
        resultado       : out    vl_logic_vector(4 downto 0)
    );
end SomadorSubtratorCompleto;
