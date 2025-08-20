library verilog;
use verilog.vl_types.all;
entity GATES_TT_vlg_check_tst is
    port(
        andgate         : in     vl_logic;
        nandgate        : in     vl_logic;
        norgate         : in     vl_logic;
        notgate         : in     vl_logic;
        orgate          : in     vl_logic;
        xnorgate        : in     vl_logic;
        xorgate         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end GATES_TT_vlg_check_tst;
