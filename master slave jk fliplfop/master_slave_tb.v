module master_slave_tb;
  reg s;
	reg r;
	reg clk;
	wire qn;
	wire qn_bar;
	master_slave uut (
		.s(s), 
		.r(r), 
		.clk(clk), 
		.qn(qn), 
		.qn_bar(qn_bar)
	);
	initial begin
	clk=0;
	#10 s = 0;r = 0;
	#10 s = 0;r = 1;
   #10 s = 1;r = 0;
   #10 s = 1;r = 1;	
	#10 s = 0;r = 0;
   #10 s = 0;r = 1;
	end
	always #5 clk=~clk;

endmodule