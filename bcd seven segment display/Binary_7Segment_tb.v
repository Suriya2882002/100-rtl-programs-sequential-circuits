module Binary_7segment_tb;
reg [3:0] Binary_Num;
	integer i;
	wire [6:0] Segment;
	Binary_7Segment uut (
		.Binary_Num(Binary_Num), 
		.Segment(Segment)
	);
    initial
		begin
		for(i=0;i<10;i=i+1)
		begin
		Binary_Num=i;
		#10;
		end
		end
		endmodule