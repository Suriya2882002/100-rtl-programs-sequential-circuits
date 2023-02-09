
module Binary_7Segment
  (

   input [3:0] Binary_Num,
   output reg [6:0]     Segment

   );

  always @(Binary_Num)
    begin
      case (Binary_Num)
            0 : Segment = 7'b1111110;
            1 : Segment = 7'b0110000;
            2 : Segment = 7'b1101101;
            3 : Segment = 7'b1111001;
            4 : Segment = 7'b0110011;
            5 : Segment = 7'b1011011;
            6 : Segment = 7'b1011111;
            7 : Segment = 7'b1110000;
            8 : Segment = 7'b1111111;
            9 : Segment = 7'b1111011;
            default : Segment = 7'b000000;
      endcase
    end
endmodule