module edge_detector(
    input  data,    
	 input clock,    
    output edge_detect  
    );
	    reg data_d;    
	 always @ (posedge clock) begin
	#2;
	data_d <= data;
	end
	assign edge_detect = data & ~data_d;            
endmodule 
