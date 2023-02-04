module sipot_b;
reg clk;
reg clear;
reg si;
wire [3:0] po;
sipo s1 (.clk(clk),.clear(clear),   .si(si),.po(po) );
initial begin
clk = 0;
clear = 0;
si = 0;
#5 clear=1;
#5 clear=0;
#10 si=1;
#10 si=0;
#10 si=0;
#10 si=1;
#10 si=0;
#10 si=1;
end
always #5 clk = ~clk;

initial #150 $stop;
endmodule