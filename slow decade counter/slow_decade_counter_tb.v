module slow_down_counter_tb();
  reg clk, slowena, reset;
  wire [3:0] q;

  slow_down_counter dut (
    .clk(clk),
    .slowena(slowena),
    .reset(reset),
    .q(q)
  );

  initial begin
    clk = 0;
    reset = 1;
    slowena = 0;
    #10 reset = 0;
  end

  always #5 clk = ~clk;

  initial begin
    #20 slowena = 1;
    #20 $finish;
  end

  initial begin
    #20 $display("q=%b",q);
    #20 $display("q=%b",q);
    #20 $display("q=%b",q);
    #20 $display("q=%b",q);
    #20 $display("q=%b",q);
  end
endmodule
