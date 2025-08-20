library verilog;
use verilog.vl_types.all;
entity TFLIPFLOPPOSEDGE_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        t               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end TFLIPFLOPPOSEDGE_vlg_sample_tst;
