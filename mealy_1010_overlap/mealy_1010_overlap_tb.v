module mealy_1010_overlap_tb;
  reg clk, rst, x;
  wire z;
  
  mealy_1010_overlap sd(clk, rst, x, z);
  initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    
    x = 0;
    #1 rst = 0;
    #2 rst= 1;
    
    #3 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #10;
    $finish;
  end
endmodule