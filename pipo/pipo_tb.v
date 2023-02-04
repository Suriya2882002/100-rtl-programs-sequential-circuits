module pipot_v;

reg clk;
reg clear;
reg [3:0] pi;
wire [3:0] po;
pipo uut (.clk(clk),.clear(clear),.pi(pi),.po(po) );initial begin
clk = 0;
clear = 0;
pi = 0;
#5 clear=1;
#5 clear=0;
#10 pi=1001;
#10 pi=1010;
#10 pi=1111;
#10 pi=1110;
#10 pi=1001;
#10 pi=0000;
end
always #5 clk = ~clk;
initial #150 $stop;
endmodule
