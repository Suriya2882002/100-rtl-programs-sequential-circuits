module moorefsmnol(input in,input clk,input rst,output reg out);
  reg [1:0] cst;//current state
  reg [1:0] nst;//next state
  parameter [2:0]s0=3'b000;
  parameter [2:0]s1=3'b001;
  parameter [2:0]s2=3'b010;
  parameter [2:0]s3=3'b011;
  parameter [2:0]s4=3'b100;
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
  s0:begin    
      out=1'b0; 
     if(in) 
       nst=s1;
     else begin
      nst=s0;end 
    end
  s1:begin
      out=1'b0; 
      if(in)
       nst=s2;
      else begin
       nst=s0;end
     end
  s2 :begin   
        out=1'b0;
        if(in)
         nst=s2;
        else begin
         nst=s3;end 
      end
  s3:begin    
        out=1'b0; 
       if(in) 
         nst=s4;
       else begin
       nst=s0 ;end
     end
    s4:begin    
        out=1'b1; 
       if(in) 
         nst=s1;
       else begin
       nst=s0 ;end
     end
    endcase
end
end
endmodule 