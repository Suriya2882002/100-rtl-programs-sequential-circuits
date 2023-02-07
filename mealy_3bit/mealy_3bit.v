
module mealy_3bit(sin,clk,reset,y);
input sin,clk,reset;
output y;
reg y;
reg [1:0] r_reg,n_reg;
parameter s0=2'b00,s1=2'b01,s2=2'b10;
always @(posedge clk or posedge reset)
         if (reset)
         r_reg <= s0;
         else
         r_reg <= n_reg;
always @(r_reg or sin)
       if (r_reg==s0 && sin==0) n_reg=s0;
       else if (r_reg==s0 && sin==1) n_reg=s1;
       else if (r_reg==s1 && sin==0) n_reg=s0;
       else if (r_reg==s1 && sin==1) n_reg=s2;
       else if (r_reg==s2 && sin==0) n_reg=s0;
       else if (r_reg==s2 && sin==1) n_reg=s2;
always @(r_reg or sin)
    if (r_reg==s2 && sin==0) y=1;
    else y=0;
endmodule