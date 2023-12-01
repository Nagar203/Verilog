module fourRatioOneMuxTb;
  reg tA, tB;
  reg[1:0] tS;
  wire tY;
  fourRatioOneMux DUT(.A(tA),.B(tB),.S(tS),.Y(tY));
  
  initial
    begin
      #0 tA=1'b0; tB=1'b0; tS=2'b00; 
      #10 tA=1'b0; tB=1'b1; tS=2'b01;
      #20 tA=1'b1; tB=1'b0; tS=2'b10;
      #30 tA=1'b1; tB=1'b1; tS=2'b11;
    end
  
  initial
    begin
      $monitor("$time input=%b%b selectorLine=%b Output=%b ",tA,tB,tS,tY);
    end
endmodule
  