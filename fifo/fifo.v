
module FIFO (input [7:0] data_in, input clk, rst,rd,wr,
             output empty, full, output reg [3:0]fifo_cnt=0,
             output reg [7:0] data_out);
reg [7:0] fifo_ram[0:7];
reg [2:0] rd_ptr = 0, wr_ptr = 0; 
assign empty = (fifo_cnt==0);
assign full = (fifo_cnt==8);
always @ (posedge clk) //write
if((wr && !full)||(wr && rd))begin
fifo_ram[wr_ptr] <= data_in;
wr_ptr <= wr_ptr +1;
end
always @ (posedge clk) begin
if((rd && !empty)||(rd && wr && empty))
data_out <= fifo_ram[rd_ptr];
end 
always @(posedge clk) begin: pointer
rd_ptr <= ((rd && !empty)||(wr && rd)) ? rd_ptr+1 : rd_ptr;
end
always @ (posedge clk ) begin: count
if(rst) begin
wr_ptr <= 0;
rd_ptr <= 0;
fifo_cnt <= 0;
end
else begin 
case ({wr,rd})
2'b00 : fifo_cnt <= fifo_cnt;
2'b01 : fifo_cnt <= (fifo_cnt==0) ? 0 :fifo_cnt-1;
2'b10 : fifo_cnt <= (fifo_cnt==8) ? 8 :fifo_cnt+1;
2'b11 : fifo_cnt <= fifo_cnt;
default : fifo_cnt <= fifo_cnt;
endcase
end
end
endmodule


