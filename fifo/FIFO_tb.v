module FIFO_tb;
 reg clk;
 reg rst;
 reg rd;
 reg wr;
 reg [7:0] data_in;
 
 wire empty;
 wire full;
 wire [7:0] data_out;
 FIFO fifo_tb (
  .clk(clk), 
  .rst(rst), 
  .rd(rd), 
  .wr(wr), 
  .empty(empty), 
  .full(full), 
  .data_in(data_in), 
  .data_out(data_out)
 );
 always #5 clk = ~clk; 
 task reset();
 begin
 clk = 1'b1;
 rst = 1'b0;
 rd = 1'b0;
 wr = 1'b0;
 data_in = 8'd0;
 end
 endtask
 task read_fifo();
 begin
 rd = 1'b1;
 #10;
 rd = 1'b0;
 end
 endtask   
 task write_fifo([7:0]din_tb);
 begin
 wr = 1'b1;
 data_in = din_tb;
 #10 
 wr = 1'b0;
 end
 endtask
 initial
 begin
 reset();
 #10;
 repeat(2)
 begin
 write_fifo(8'h11);
 #10;
 write_fifo(8'h22);
 #10;
 write_fifo(8'h33);
 #10;
 write_fifo(8'h44);
 #10;
 end
 #10;
 repeat(2)
 begin
 read_fifo();
 #10;
 end
 #10;
 $finish;
 end
      
endmodule
