library verilog;
use verilog.vl_types.all;
entity FULL_addsub_vlg_check_tst is
    port(
        BO              : in     vl_logic;
        DIFF            : in     vl_logic;
        carry           : in     vl_logic;
        sum             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FULL_addsub_vlg_check_tst;
