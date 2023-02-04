module d_ff_async_tb;
  reg clk, rst;
  reg d;
  wire q;
  
  d_ff_async dff(clk, rst, d, q);
  always #2 clk = ~clk;
  initial begin
    clk = 0; rst = 0;
    d = 0;
    #3 rst = 1;
  repeat(6) begin
      d = 0;
      #3;
    end
    rst = 0; #3;
    rst = 1;
    repeat(6) begin
      d = 1;
      #3;
    end
    $finish;
  end
endmodule
