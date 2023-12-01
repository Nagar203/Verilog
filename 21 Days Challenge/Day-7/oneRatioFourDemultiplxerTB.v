module oneRatioFourDemultiplxerTB;
  reg [1:0] tS;
  reg tI;
  wire[3:0] tY;
  
  oneRatioFourDemultiplxer DUT(.S(tS), .I(tI), .Y(tY));
  
  initial
    begin
      #0 tI = 1'b1; tS=2'b00;
      #20 tI = 1'b1; tS=2'b01;
      #30 tI = 1'b1; tS=2'b10;
      #40 tI = 1'b1; tS=2'b11;
    end
  
  initial
    begin
      $monitor("Input=%b, selectorLines: s[1]=%b and s[0]=%b,  Ouput[I3,I2,I1,I0]=%b",tI,tS[1],tS[0],tY);
    end
endmodule
      