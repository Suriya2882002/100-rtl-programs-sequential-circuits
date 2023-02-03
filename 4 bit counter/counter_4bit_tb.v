module counter_4bit_tb;  
  reg clk;                      
  reg rstn;                      
  wire [3:0] out;              
  counter_4bit   c0 ( .clk (clk),  
                 .rstn (rstn),  
                 .out (out));  
  
  always #5 clk = ~clk;  
  initial begin  
    clk <= 0;  
    rstn <= 0;  
    #20   rstn <= 1;  
    #80   rstn <= 0;  
    #50   rstn <= 1;  
  
   
    #20 $finish;  
  end  
endmodule  