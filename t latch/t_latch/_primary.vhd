library verilog;
use verilog.vl_types.all;
entity t_latch is
    port(
        t               : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic
    );
end t_latch;
