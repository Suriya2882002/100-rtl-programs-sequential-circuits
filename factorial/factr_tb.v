module testbench_factr();

reg clk;
reg [31:0] number;
wire [31:0] result;
wire overflow;

factr UUT (
.number(number),
.overflow(overflow),
.result(result),
.clk(clk)
);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
number = 4; // test with 4! = 24
#50 $display("Result: %d Overflow: %d", result, overflow);

number = 32'b1100;  // test with overflow
#50 $display("Result: %d Overflow: %d", result, overflow);
end
endmodule
