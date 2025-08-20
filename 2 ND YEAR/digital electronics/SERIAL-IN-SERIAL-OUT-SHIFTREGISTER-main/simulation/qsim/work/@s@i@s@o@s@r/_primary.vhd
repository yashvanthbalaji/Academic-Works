library verilog;
use verilog.vl_types.all;
entity SISOSR is
    port(
        clk             : in     vl_logic;
        clear           : in     vl_logic;
        si              : in     vl_logic;
        so              : out    vl_logic
    );
end SISOSR;
