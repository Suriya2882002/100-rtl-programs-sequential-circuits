module mealy_1001(input  clk,
                   input  reset,
                   input din,
                   output reg  dout);
  parameter S0 = 4'h1;
  parameter S1 = 4'h2;
  parameter S2 = 4'h3;
  parameter S3 = 4'h4;
  

  
   reg[2:0] state_t,state;

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      dout <= 1'b0;
      state <= S0;
    end
    else begin
      case(state)
        S0: begin
          if(din) begin
            state <= S1;
            dout <=1'b0;
          end
          else
            dout <=1'b0;
        end
        S1: begin
          if(~din) begin
            state <= S2;
            dout <=1'b0;
          end
          else begin
            dout <=1'b0;
          end
        end
        S2: begin
          if(~din) begin
            state <= S3;
            dout <=1'b0;
          end
          else begin
            state <= S1;
            dout <=1'b0;
          end
        end
        S3: begin
          if(din) begin
            state <= S0;
            dout <=1'b1;
          end
          else begin
            state <= S0;
            dout <=1'b0;
          end
        end
      endcase
    end
  end

endmodule