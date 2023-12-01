module grayToBinaryTB();
  reg [3:0] tG;
  reg [3:0] tB;
  
  grayToBinary DUT(.B(tB),.G(tG));
  
  initial
    begin
      $monitor($time," Gray: %b, Binary: %b",tG,tB);
      #1 tG=4'b0010;
      #1 tG=4'b1011;
      #1 tG=4'b0111;
    end
  
endmodule