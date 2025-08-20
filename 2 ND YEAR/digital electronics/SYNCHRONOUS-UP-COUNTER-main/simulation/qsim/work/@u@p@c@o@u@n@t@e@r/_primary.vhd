library verilog;
use verilog.vl_types.all;
entity UPCOUNTER is
    port(
        \out\           : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        rstn            : in     vl_logic
    );
end UPCOUNTER;
