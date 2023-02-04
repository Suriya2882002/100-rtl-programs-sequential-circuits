module piso(clk,load,pi,so);
input clk,load;
input [3:0]pi;
output reg so;
reg [3:0]tmp;
always @(posedge clk)
begin
if(load)
tmp<=pi;
else
begin
so<=tmp[3];
tmp<={tmp[2:0],1'b0};
end
end
endmodule