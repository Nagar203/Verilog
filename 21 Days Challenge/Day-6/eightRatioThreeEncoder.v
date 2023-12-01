module eightRatioThreeEncoder(Y,I);
  input[7:0] I;
  input E;
  output[2:0] Y;
  reg[2:0] Y;
  
  always @(E or I)
    begin
      if(I == 8'b00000001)
        Y = 3'b000;
      else if(I == 8'b00000010)
        Y = 3'b001;
      else if(I == 8'b00000100)
        Y = 3'b010;
      else if(I == 8'b00001000)
        Y = 3'b011;
      else if(I == 8'b00010000)
        Y = 3'b100;
      else if(I == 8'b00100000)
        Y = 3'b101;
      else if(I == 8'b01000000)
        Y = 3'b110;
      else if(I == 8'b10000000)
        Y = 3'b111;
    end
endmodule