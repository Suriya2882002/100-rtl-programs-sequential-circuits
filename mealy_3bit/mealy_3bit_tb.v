module mealy_3bit_tb;
reg sin,clk,reset;
wire y;
mealy_3bit d1(sin,clk,reset,y);
initial
begin
clk = 1'b0;
repeat (21)
#5 clk = ~clk;
end
initial
begin
reset = 1;sin=0;
#10 reset =0;
#10 sin = 1;
#10 sin = 0;
#10 sin = 1;
#10 sin = 1;
#10 sin = 0;
#10 sin = 0;
#10 sin = 1;
#10 sin = 1;
#10 sin = 0;
#10 sin = 1;
end
endmodule
 