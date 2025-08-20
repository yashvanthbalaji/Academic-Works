library verilog;
use verilog.vl_types.all;
entity Boolean_min is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        w               : in     vl_logic;
        x               : in     vl_logic;
        y               : in     vl_logic;
        z               : in     vl_logic;
        f1              : out    vl_logic;
        f2              : out    vl_logic
    );
end Boolean_min;
