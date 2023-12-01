module eightRatioThreePriorityEncodeTB;
  reg [7:0] INPUT0;
  reg [2:0] OUT0;
  
  eightRatioThreePriorityEncode PE(.INPUT(INPUT0), .OUT(OUT0));
  
  initial
    begin
      #5 INPUT0=8'b00000001;
      #5 INPUT0=8'b00000010;
      #5 INPUT0=8'b00000100;
      #5 INPUT0=8'b00001000;
      #5 INPUT0=8'b00010000;
      #5 INPUT0=8'b00100000;
      #5 INPUT0=8'b01000000;
      #5 INPUT0=8'b10000000;
    end
  
  initial
    begin
      $monitor($time," INPUT=%b, OUTPUT=%b", INPUT0, OUT0);
    end
endmodule