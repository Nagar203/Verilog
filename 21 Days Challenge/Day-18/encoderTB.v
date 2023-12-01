module ecoderTB();
  reg tA,tB,tE;
  reg [0:3]tOut;
  encoder DUT(.A(tA),.B(tB),.E(tE),.D(tOut));
  
  initial
    begin
      #1 tA=1'b0; tB=1'b0; tE=1'b0;
      #1 tA=1'b0; tB=1'b1; tE=1'b0;
      #1 tA=1'b1; tB=1'b0; tE=1'b0;
      #1 tA=1'b1; tB=1'b1; tE=1'b0;
    end
  
  initial
    begin
      $monitor($time," A=%b , B=%b , E=%b , Out=%b",tA,tB,tE,tOut);
    end
endmodule