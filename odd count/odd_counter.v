module odd_counter(
    input clk,
    output reg [7:0] count
);
  initial 
    count = 1'b1;
  always @ (posedge clk) begin
    count <= count + 2'b10;
  end
endmodule