
module fixedpriority_arbiter_tb(); 
wire [3:0] GNT;

reg [3:0] REQ;
reg clk,reset ;

fixedpriority_arbiter dut(.GNT(GNT),.REQ(REQ),.clk(clk),.reset(reset));

initial
clk=0;
always #4 clk <= ~clk ;

initial 
begin
reset =0;
#4 reset =1;
repeat(20)
begin
#5  REQ<=$random;

end
#100 $finish();
end
endmodule