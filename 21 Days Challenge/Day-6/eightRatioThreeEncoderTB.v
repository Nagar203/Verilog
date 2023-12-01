module eightRatioThreeEncoderTB;
  reg[7:0] tI;
  wire [2:0] tY;
  reg E;
  eightRatioThreeEncoder DUT(.Y(tY), .I(tI));
  
  initial
    begin
      #0 tI=8'b00000001;
      #10 tI=8'b00000010;
      #10 tI=8'b00000100;
      #10 tI=8'b00001000;
      #10 tI=8'b00010000;
      #10 tI=8'b00100000;
      #10 tI=8'b01000000;
      #10 tI=8'b10000000;
    end
  
  initial
    begin
      $monitor("Input=%b, Output=%b",tI, tY);
    end
endmodule