module threeRationEigthDecoderTB;
  reg[2:0] tI;
  wire[7:0] tY;
  
  threeRationEigthDecoder DUT(.I(tI), .Y(tY));
  
  initial
    begin
      #0 tI=3'b000;
      #10 tI=3'b001;
      #20 tI=3'b010;
      #30 tI=3'b011;
      #40 tI=3'b100;
      #50 tI=3'b101;
      #60 tI=3'b110;
      #70 tI=3'b111;      
    end
  
  initial
    begin
      $monitor("Input=%b, Output=%b", tI, tY);
    end
endmodule



