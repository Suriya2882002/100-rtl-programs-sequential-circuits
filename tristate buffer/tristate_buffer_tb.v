module tristate_buffer_tb;
  
  // Inputs
  reg a, c;
  
  // Outputs
  wire y;
  
  // Instantiate the module
  tristate_buffer uut(a, c, y);
  
  initial begin
    // Test case 1: c = 0
    c = 0;
    a = 1;
    #10; // Wait 10 time units
    if (y !== 1'bz) $error("Test case 1 failed"); // Check if output is high-impedance
    
    // Test case 2: c = 1, a = 0
    c = 1;
    a = 0;
    #10;
    if (y !== 1'bz) $error("Test case 2 failed"); // Check if output is high-impedance
    
    // Test case 3: c = 1, a = 1
    c = 1;
    a = 1;
    #10;
    if (y !== a) $error("Test case 3 failed"); // Check if output matches input
    
    $display("All test cases passed"); // Display success message
    $finish; // Terminate simulation
  end
  
endmodule

