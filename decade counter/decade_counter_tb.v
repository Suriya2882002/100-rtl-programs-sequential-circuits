module decade_counter_tb;
wire [3:0] count;
reg en,clock;
  
decade_counter dc(.en(en), .clock(clock), .count(count));
initial begin

    en=0;
    clock=0;
   #10 en=1'd1;
end
  
  always
    #5 clock=~clock; 

   initial
    begin
      #10000$finish;
    end
  
endmodule
