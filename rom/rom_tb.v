module rom_tb();

reg clk, en;
reg [2:0] addres;
wire [7:0] data_out;

rom uut(clk, addres, data_out, en);

initial begin
    clk = 0;
    en = 1;
    addres = 3'b000;
    #5 addres = 3'b001;
    #5 addres = 3'b010;
    #5 addres = 3'b011;
    #5 addres = 3'b100;
    #5 addres = 3'b101;
    #5 addres = 3'b110;
    #5 addres = 3'b111;
    #5 addres = 3'b000;
    #5 $finish;
end

always #10 clk = ~clk;

endmodule
