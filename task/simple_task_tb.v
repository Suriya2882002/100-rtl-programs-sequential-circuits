module simple_task_tb;

 
  reg [7:0] temp_in;
  wire [7:0] temp_out;
  integer i;

  
  simple_task dut(.temp_in(temp_in), .temp_out(temp_out));

  
  reg clk = 0;

  initial begin
    temp_in = 0;

    // Apply inputs and print results for several test cases
    for ( i = 0; i <= 100; i = i + 10) begin
      #10 temp_in = i;
      $display("Input: %d, Output: %d", temp_in, temp_out);
    end

    // Finish simulation
    #10 $finish;
  end

  // Generate clock signal
  always #5 clk = ~clk;

endmodule
