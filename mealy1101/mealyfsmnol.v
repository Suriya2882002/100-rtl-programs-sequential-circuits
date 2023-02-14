module mealyfsmnol(input in,input clk,input rst,output reg out);
  reg [1:0] cst;//current state
  reg [1:0] nst;//next state
  parameter [1:0]s0=2'b00;
  parameter [1:0]s1=2'b01;
  parameter [1:0]s2=2'b10;
  parameter [1:0]s3=2'b11;
always@(posedge clk)
begin
  if(rst)begin
    out=1'b0;
    cst=s0;
    nst=s0;end
  else
    begin
    cst=nst;
    case(cst)
  s0: if(in) begin    
    out=1'b0;
    nst=s1;end
  else begin
    out=1'b0;
    nst=s0;end
  s1: if(in)begin
    out=1'b0;
    nst=s2;end
     else begin
    out=1'b0;
    nst=s0;end
  s2 : if(in)begin   
    out=1'b0;
    nst=s2;end
      else begin
    out=1'b0;
    nst=s3;end
  s3 : if(in)begin   
    out=1'b1;
    nst=s0;end
      else begin
    out=1'b0;
    nst=s0;end
   endcase
end
end
endmodule
