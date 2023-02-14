module either_edge_detector (clk,
                      rst,
                      din,
                      either_edge
                     );
  
  input clk, rst, din;
  output  either_edge; 
  
  reg dout;
  
  always @ (posedge clk or posedge rst)
    begin
      if (rst)
        begin
          dout <= 'h0;
        end
      else
        begin
          dout <= din;
        end
    end
  
  assign either_edge  = ( din ^ dout );
  
endmodule