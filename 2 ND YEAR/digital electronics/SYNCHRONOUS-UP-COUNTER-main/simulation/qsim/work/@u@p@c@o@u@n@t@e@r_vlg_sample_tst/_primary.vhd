library verilog;
use verilog.vl_types.all;
entity UPCOUNTER_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end UPCOUNTER_vlg_sample_tst;
