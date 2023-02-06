module d_latch(e, d, q);
input e;
input d;
output q;
reg q;
always @(e or d)
begin
if (e)
q<=d;
end
endmodule

 
