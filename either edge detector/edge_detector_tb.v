module edge_detector_tb;
  
  reg clk, rst, din;
  wire rising_edge, falling_edge, either_edge;
  
  either_edge_detector ED (clk,
                      rst,
                      din,
                      either_edge
                     );
  
  initial
    begin
      clk = 0;
      forever
        #20 clk = !clk;
    end
  
  task RST;
    begin
      rst = 1'b1;
      din = 'h0;
    $display ("\n\nSKL\n\n");
      #60;
      rst = 1'b0;
    end
  endtask
  
  task DIN (input i);
    begin
      @(negedge clk);
      din = i;
    end
  endtask
  
  initial
    begin
      RST;
      #10;
      DIN(1);
      #3;
      DIN(0);
      #15;
      DIN(1);
      #3;
      DIN(1);
      #18;
      DIN(0);
      #7;
      DIN(1);
      #30;
      DIN(1);
      #55;
      DIN(0);
      #5;
      DIN(1);
      #18;
      DIN(0);
      #7;
      DIN(1);
      #9;
      DIN(0);
      #25;
      DIN(1);
      #7;
      DIN(1);
      #23;
      DIN(0);
      #87;
      DIN(1);
      #39;
      DIN(1);
      #52;
      DIN(0);
      #17;
      DIN(1);
      #57;
      DIN(0);
      #36;
      DIN(1);
      #5;
      DIN(0);
      #10;
      DIN(1);
      #3;
      DIN(1);
      #18;
      DIN(0);
      #7;
      DIN(1);
      #30;
      DIN(1);
      #55;
      DIN(0);
      #5;
      DIN(1);
      #18;
      DIN(0);
      #10;
      DIN(1);
      #5;
      DIN(0);
      #10;
      DIN(1);
      #3;
      DIN(1);
      #18;
      DIN(0);
      #7;
      DIN(1);
      #30;
      DIN(1);
      #55;
      DIN(0);
      #5;
      DIN(1);
      #18;
      DIN(0);
      #7;
      DIN(1);
      #9;
      DIN(0);
      #25;
      DIN(1);
      #7;
      DIN(1);
      #23;
      DIN(0);
      #87;
      DIN(1);
      #39;
      DIN(1);
      #52;
      DIN(0);
      #17;
      DIN(1);
      #57;
      DIN(0);
      #36;
      DIN(1);
      #5;
      DIN(0);
      #10;
      DIN(1);
      #3;
      DIN(1);
      #18;
      DIN(0);
      #7;
      DIN(1);
      #30;
      DIN(1);
      #55;
      DIN(0);
      #5;
      DIN(1);
      #18;
      DIN(0);
      #4;
      #10;
    
    end
  
  
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars;
    end
  
  initial
    #2800 $finish;
  
endmodule 