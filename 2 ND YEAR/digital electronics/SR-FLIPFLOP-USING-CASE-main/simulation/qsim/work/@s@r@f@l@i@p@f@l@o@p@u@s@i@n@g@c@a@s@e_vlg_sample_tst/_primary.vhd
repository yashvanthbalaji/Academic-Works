library verilog;
use verilog.vl_types.all;
entity SRFLIPFLOPUSINGCASE_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        r               : in     vl_logic;
        reset           : in     vl_logic;
        s               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SRFLIPFLOPUSINGCASE_vlg_sample_tst;
