module rom(clk,addres,data_out,en);

input clk,en;

input [2:0] addres;

output reg [7:0] data_out;

reg [7:0] mem [0:7];

initial begin data_out = 8'b00000000; end

always @ (addres)

case (addres)

3'b000 : mem[addres] = 8'b00000001;

3'b001 : mem[addres] = 8'b00000010;

3'b010 : mem[addres] = 8'b00000011;

3'b011 : mem[addres] = 8'b00000100;

3'b100 : mem[addres] = 8'b00000101;

3'b101 : mem[addres] = 8'b00000110;

3'b110 : mem[addres] = 8'b00000111;

3'b111 : mem[addres] = 8'b00001000;

default : mem[addres] = 8'b0000000;

endcase

always@(posedge clk)

begin

if(en)begin

data_out <= mem[addres];

end else

data_out <= data_out;

end

endmodule