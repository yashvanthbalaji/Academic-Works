library verilog;
use verilog.vl_types.all;
entity JKFLIPFLOPUSINGIFELSE is
    port(
        q               : out    vl_logic;
        qb              : out    vl_logic;
        j               : in     vl_logic;
        k               : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic
    );
end JKFLIPFLOPUSINGIFELSE;
