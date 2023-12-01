module jkFlipFlopTB;
  reg J, K, CLK=1;
  wire Q;
  
  jkFlipFlop DUT(.J(J), .K(K), .CLK(CLK), .Q(Q));
  
  always
    begin
      CLK=!CLK;
      #5;
    end
  
  initial
    begin
      #5 J=1'b0; K=1'b0;
      #2 J=1'b0; K=1'b1;
      #1 J=1'b1; K=1'b0;
      #1 J=1'b1; K=1'b1;
      $finish;
    end
  
  initial
    begin
      $monitor($time," CLK=%b, J=%b, K=%b, Q=%b",CLK,J,K,Q);
    end
endmodule