module slow_down_counter(input clk,input slowena,input reset,output reg[3:0]q);
  always@(posedge clk)begin
    if(reset)q<=0;
    else if(slowena && q==9)q<=0;
    else if(slowena)q<=q+1;
    end
  endmodule