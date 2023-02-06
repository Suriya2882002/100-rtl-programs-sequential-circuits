module mealy_1001_overlapping_tb;
  reg clk, reset, din;
  wire dout;
  
  mealy_1001_overlapping sd(clk, reset,din,dout);
  initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    
    din = 1;
    #1 reset = 0;
    #2 reset = 1;
    
    #3 din = 0;
    #4 din = 0;
    #4 din = 1;
    #4 din= 1;
    #4 din = 1;
    #4 din = 0;
    #4 din = 0;
    #4 din = 1;
    #4 din = 0;
    #4 din = 1;
    #4 din = 0;
    #10;
    $finish;
  end
endmodule