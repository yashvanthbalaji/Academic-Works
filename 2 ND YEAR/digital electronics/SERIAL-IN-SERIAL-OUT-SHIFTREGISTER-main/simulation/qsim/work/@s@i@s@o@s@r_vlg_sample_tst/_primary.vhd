library verilog;
use verilog.vl_types.all;
entity SISOSR_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        si              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SISOSR_vlg_sample_tst;
