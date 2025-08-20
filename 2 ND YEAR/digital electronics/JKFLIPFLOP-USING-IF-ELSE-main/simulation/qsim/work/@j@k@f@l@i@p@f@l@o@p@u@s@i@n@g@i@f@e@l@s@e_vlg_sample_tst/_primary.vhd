library verilog;
use verilog.vl_types.all;
entity JKFLIPFLOPUSINGIFELSE_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        j               : in     vl_logic;
        k               : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end JKFLIPFLOPUSINGIFELSE_vlg_sample_tst;
