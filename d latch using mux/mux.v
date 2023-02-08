module mux(a,b,s,y);
input a,b,s;
output reg  y;
always @(a or b or s)
begin
 y= (~s&a) | (s&b);
end
endmodule
