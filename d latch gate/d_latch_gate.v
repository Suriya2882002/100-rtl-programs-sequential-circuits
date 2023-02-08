module d_latch_gate(input clk,input in,output reg out);
  always@(posedge clk)
  begin
    out<= in ^ out;
  end
endmodule