module autoFunctionTB;
  reg [9:0]tA;
  reg [9:0]tResult;
  
  autoFunction DUT(.a(tA),.result(tResult));
  
  initial
    begin
      #1 tA=10'd6;
    end
  
  initial
    begin
      $monitor($time," A=%d, Factorial=%d",tA,tResult);
    end
endmodule