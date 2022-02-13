library verilog;
use verilog.vl_types.all;
entity ContadorMod13 is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        preset          : in     vl_logic;
        counter         : out    vl_logic_vector(3 downto 0)
    );
end ContadorMod13;
