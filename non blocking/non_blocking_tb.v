
module nonblock_assign_tb;

reg din;
reg clk;

wire a;
wire b;
wire c;

nonblock_assign uut(.din(din),
        .clk(clk),
        .a(a),
        .b(b),
        .c(c));
initial
begin
  $dumpfile("dump.vcd");
        $dumpvars;
        din = 1'b1;
        clk = 1'b0;
end
always #2 clk = clk + 1'b1;
endmodule