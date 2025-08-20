library verilog;
use verilog.vl_types.all;
entity HALF_ADDSUB_vlg_check_tst is
    port(
        Bo              : in     vl_logic;
        D               : in     vl_logic;
        carry           : in     vl_logic;
        sum             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end HALF_ADDSUB_vlg_check_tst;
