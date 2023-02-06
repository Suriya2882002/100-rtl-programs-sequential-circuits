module master_slave(s,r,clk,qn,qn_bar,);
input s,r,clk;
output qn,qn_bar;


wire mq;
wire mq_bar;
wire mclk;
assign mclk= ~clk;


jk_ff Master(s,r,clk,mq,mq_bar);
jk_ff Slave(mq,mq_bar,mclk,qn,qn_bar);

endmodule