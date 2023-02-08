
module d_latch_mux_tb;
  reg d;
	reg clock;
	wire q;
 d_latch_mux uut (
		.d(d), 
		.clock(clock), 
		.q(q)
	);

	initial begin

		d = 0;
		clock = 0;

	end
	
	always #10 d=~d;
	always #5 clock=~clock;
	endmodule