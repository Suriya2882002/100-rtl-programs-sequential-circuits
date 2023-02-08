module d_latch_gate_tb;
  reg clk, in;
  wire out;

  d_latch_gate dut (clk, in, out);

  initial begin
    clk = 0; in = 0;
    #5 clk = 1; in = 1;
    #5 clk = 0;in=0;
    #5 clk = 1;in=1;
    #5 clk = 0;in=0;
    #5 $finish;
  end

  always #5 clk = ~clk;

endmodule
