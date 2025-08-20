library verilog;
use verilog.vl_types.all;
entity GATES_TT is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        andgate         : out    vl_logic;
        orgate          : out    vl_logic;
        notgate         : out    vl_logic;
        nandgate        : out    vl_logic;
        norgate         : out    vl_logic;
        xorgate         : out    vl_logic;
        xnorgate        : out    vl_logic
    );
end GATES_TT;
