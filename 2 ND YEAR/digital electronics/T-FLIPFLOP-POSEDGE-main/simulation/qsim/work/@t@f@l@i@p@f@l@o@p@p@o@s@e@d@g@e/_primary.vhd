library verilog;
use verilog.vl_types.all;
entity TFLIPFLOPPOSEDGE is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        t               : in     vl_logic;
        q               : out    vl_logic;
        q_bar           : out    vl_logic
    );
end TFLIPFLOPPOSEDGE;
