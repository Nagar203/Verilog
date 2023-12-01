module srFlipFlopTB;
  reg S, R, CLK=1;
  wire Q;
  
  srFlipFlop DUT(.S(S), .R(R), .CLK(CLK), .Q(Q));
  
  always
    begin
      CLK=!CLK;
      #5;
    end
  
  initial
    begin
      #5 S=1'b0; R=1'b0;
      #2 S=1'b0; R=1'b1;
      #1 S=1'b1; R=1'b0;
      #1 S=1'b1; R=1'b1;
      $finish;
    end
  
  initial
    begin
      $monitor($time," CLK=%b, S=%b, R=%b, Q=%b",CLK,S,R,Q);
    end
endmodule