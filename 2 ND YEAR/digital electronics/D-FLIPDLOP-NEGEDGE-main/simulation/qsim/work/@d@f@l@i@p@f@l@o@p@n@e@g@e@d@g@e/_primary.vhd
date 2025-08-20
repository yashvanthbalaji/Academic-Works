library verilog;
use verilog.vl_types.all;
entity DFLIPFLOPNEGEDGE is
    port(
        D               : in     vl_logic;
        Clock           : in     vl_logic;
        Q               : out    vl_logic;
        Qbar            : out    vl_logic
    );
end DFLIPFLOPNEGEDGE;
