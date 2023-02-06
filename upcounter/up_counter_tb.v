module up_counter_tb;
  reg clk;
  reg reset;
  wire[3:0] counter;
  up_counter c(.clk(clk),.reset(reset),.counter(counter));
  initial 
  begin
    clk=0;
    forever  clk = ~clk;
  end
  initial begin
    reset=1;
    #10;
    reset=0;
  end
endmodule