module non_blocking(din, clk, a, b, c);
input din;
input clk;
output reg a;
output reg b;
output reg c;
always @(posedge clk)
begin
	a <= din;
        b <= a;
        c <= b;
end
endmodule