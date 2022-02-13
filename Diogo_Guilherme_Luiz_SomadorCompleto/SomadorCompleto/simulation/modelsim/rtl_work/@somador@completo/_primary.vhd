library verilog;
use verilog.vl_types.all;
entity SomadorCompleto is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        soma            : out    vl_logic_vector(4 downto 0);
        tSaida          : out    vl_logic
    );
end SomadorCompleto;
