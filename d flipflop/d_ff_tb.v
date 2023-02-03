
module d_ff_tb;  
    reg clk;  
    reg d;  
    reg rstn;  
    reg [2:0] delay;  
    integer i;
    d_ff  dff0 ( .d(d),  
                .rstn(rstn),  
                .clk (clk),  
                .q (q));  
  always #10 clk = ~clk;  
  initial begin  
        clk <= 0;  
        d <= 0;  
        rstn <= 0;  
  
        #15 d <= 1;  
        #10 rstn <= 1;  
        for (i = 0; i < 5; i=i+1) begin  
            delay = $random;  
            #(delay) d <= i;  
        end  
    end  
endmodule  