module sr_latch (S, R, En, Q, Qc);
    input S, R;
    input En;
    output Q, Qc;
    reg Q,Qc;
  always@(*)
    begin
      if(En)
        begin
          Q  =  ~(R | Qc); 
          Qc =  ~(S | Q); 
        end
    end

endmodule