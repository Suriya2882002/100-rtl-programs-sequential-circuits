module moore_overlapping (input clk, rst_n, x, output z);
  parameter A = 4'h1;
  parameter B = 4'h2;
  parameter C = 4'h3;
  parameter D = 4'h4;
  parameter E = 4'h5;
  
  reg[3:0] state, next_state;
  always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin 
      state <= A;
    end
    else state <= next_state;
  end
  
  always @(state or x) begin
    case(state)
      A: begin
           if(x == 0) next_state = A;
           else       next_state = B;
         end
      B: begin
           if(x == 0) next_state = C;
           else       next_state = B;
         end
      C: begin
           if(x == 0) next_state = A;
           else       next_state = D;
         end
      D: begin
           if(x == 0) next_state = E;
           else       next_state = B;
         end
      E: begin
           if(x == 0) next_state = A;
           else       next_state = D;
         end
      default: next_state = A;
    endcase
  end
  assign z = (state == D)? 1:0;
endmodule