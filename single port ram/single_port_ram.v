module single_port_ram(data_in, ram_address,write_enable,clk,data_out);
input [7:0]data_in;
input [5:0] ram_address;
input write_enable;
input clk;
output [7:0]data_out;
reg [7:0] ram_memory[31:0]; 
reg [5:0] address_register;
always @(posedge clk)
begin
if (write_enable)  
  ram_memory[ram_address] <= data_in;
else 
  address_register <= ram_address;
end
assign data_out = ram_memory[address_register];
endmodule
