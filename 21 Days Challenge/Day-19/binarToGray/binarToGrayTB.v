module binarToGrayTB();
  reg [3:0] tB;
  reg [3:0] tG;
  
  binarToGray DUT(.B(tB),.G(tG));
  
  initial
    begin
      $monitor($time," Binary: %b, Gray: %b",tB,tG);
      #1 tB=4'b0010;
      #1 tB=4'b1011;
      #1 tB=4'b0111;
    end
  
endmodule