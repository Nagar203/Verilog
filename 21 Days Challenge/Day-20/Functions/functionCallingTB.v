module functionCallTB;
  reg [3:0] tA,tB;
  reg [4:0] tSum;
  
  functionCall DUT(.a(tA),.b(tB),.addition(tSum));
  
  initial
    begin
      #1 tA=4'b1101; tB=4'b1100;
      #1 tA=4'b1100; tB=4'b1100;
      #1 tA=4'b1001; tB=4'b1100;
    end
  
  
  initial
    begin
      $monitor($time," A=%b, B=%b, Sum=%b",tA,tB,tSum);
    end
endmodule