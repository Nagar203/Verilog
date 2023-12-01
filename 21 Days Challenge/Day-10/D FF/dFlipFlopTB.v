module tFlipFlopTB;
  reg D0=1; 
  reg CLK0=0;
  reg Q0; 
  
  tFlipFlop DUT(.Q(Q0), .D(D0), .CLK(CLK0));
  
  always
    begin
      CLK0 = ~CLK0;
      #10;
    end
  
  initial
    begin
      # 10 D0=1;
      # 20 D0=0;
      $finish;
    end
  
  initial
    begin
      $monitor($time," D=%b, Q=%B, CLK=%b",D0,Q0,CLK0);
    end
endmodule
    