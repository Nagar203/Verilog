module fourBitCarryLookAheadAdderTB;
  reg [3:0]A1,B1;
  reg C1;
  reg [3:0] so;
  reg co;
  
  fourBitCarryLookAheadAdder DUT(.S0(so),.COUT(co),.A0(A1), .B0(B1), .C0(C1));
  
  initial
    begin
      #0 A1=4'b0001; B1=4'b0000; C1=1'b0;
      #10 A1=4'b0000; B1=4'b0001; C1=1'b0;
      #20 A1=4'b0000; B1=4'b0000; C1=1'b1;
      #30 A1=4'b0011; B1=4'b0100; C1=1'b1;
      #10 A1=4'b0010; B1=4'b1101; C1=1'b1;
      #20 A1=4'b1110; B1=4'b1100; C1=1'b0;
      #30 A1=4'b0101; B1=4'b1000; C1=1'b1;
      #30 A1=4'b1111; B1=4'b1111; C1=1'b1;
    end
  initial
    begin
      $monitor("$time %b %b %b, Sout=%b, Cout=%b", A1,B1,C1,so,co);
    end
endmodule
