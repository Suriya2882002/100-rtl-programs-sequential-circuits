module sr_flipflop_tb;
  wire q,qbar;
  reg s,r,clk;
  sr_flipflop uut (.s(s),.r(r),.clk(clk),.q(q),.qbar(qbar));
  initial begin
    clk=0;
    forever #10 clk = ~clk;
  end
  initial
   begin
     #100;
     s=0;r=0;
     #100;
    s=1;r=0;
    #100;
    s=0;r=1;
    #100;
    s=1;s=0;
    #100;
    s=1;r=1;
  end
endmodule