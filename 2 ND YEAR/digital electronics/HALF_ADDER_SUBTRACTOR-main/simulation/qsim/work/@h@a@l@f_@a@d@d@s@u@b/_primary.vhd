library verilog;
use verilog.vl_types.all;
entity HALF_ADDSUB is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        sum             : out    vl_logic;
        carry           : out    vl_logic;
        D               : out    vl_logic;
        Bo              : out    vl_logic
    );
end HALF_ADDSUB;
