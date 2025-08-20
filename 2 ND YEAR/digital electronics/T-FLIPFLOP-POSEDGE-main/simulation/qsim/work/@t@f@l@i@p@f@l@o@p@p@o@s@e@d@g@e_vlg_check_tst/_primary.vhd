library verilog;
use verilog.vl_types.all;
entity TFLIPFLOPPOSEDGE_vlg_check_tst is
    port(
        q               : in     vl_logic;
        q_bar           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end TFLIPFLOPPOSEDGE_vlg_check_tst;
