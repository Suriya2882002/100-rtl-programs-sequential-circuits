module odd_counter_tb;
reg clk;
wire [7:0] count;
odd_counter cntr(
    .clk(clk),
    .count(count)
  );
  
  initial begin
    clk = 0;
    #5
    clk = 1;
    #5
    clk = 0;
    #5
    clk = 1;
    #5
    $finish;
  end
  
 
endmodule