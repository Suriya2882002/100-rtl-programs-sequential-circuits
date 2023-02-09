module ROM_sevenSegment_tb
 ();
 reg [3:0] SW;
 wire [6:0] HEX0;
 wire [6:0] LEDR;
integer i;
wire [6:0] data; ROM_sevenSegment seven_segment_ROM(
 .addr(SW), .data(data)
 );
 initial begin
 for(i=0;i<16;i=i+1)
 begin
 SW=i;
 #10;
 end
end

assign HEX0 = data; 
 assign LEDR = data; 

 endmodule