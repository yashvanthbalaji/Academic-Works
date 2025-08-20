library verilog;
use verilog.vl_types.all;
entity FULL_addsub is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic;
        sum             : out    vl_logic;
        carry           : out    vl_logic;
        BO              : out    vl_logic;
        DIFF            : out    vl_logic
    );
end FULL_addsub;
