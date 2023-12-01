module srLatchTB;
  reg S, R;
  wire Q, Qbar;
  
  srLatch DUT(.S(S), .R(R), .Q(Q), .Qbar(Qbar));
    
  initial
    begin
      #1 S=1'b0; R=1'b1;
      #1 S=1'b1; R=1'b0;
      #1 S=1'b1; R=1'b1;
      #1 S=1'b0; R=1'b0;
      
    end
  
  initial
    begin
      $monitor($time," S=%b, R=%b, Q=%b, Qbar=%b", S ,R ,Q , Qbar);
    end
endmodule