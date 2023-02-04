module sipot_b;
reg clk;
reg clear;
reg pi;
wire [3:0] so;
piso uut (.clk(clk),.clear(clear),   .so(so),.pi(pi) );initial begin
clk = 0;
clear = 0;
pi = 0;
#5 clear=1;
#5 clear=0;
#10 pi=1;
#10 pi=0;
#10 pi=0;
#10 pi=1;
#10 pi=0;
#10 pi=1;
end
always #5 clk = ~clk;
initial #150 $stop;
endmodule
