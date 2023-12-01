module shiftingTB();
  reg [7:0] a;
  shifting dut(.a(a));
  
  initial
    begin
     #1 a=8'b00000001;
     #1 a=8'b10100010;
     #1 a=8'b00001011;
     #1 a=8'b10000011;
     #1 a=8'b00000100;
     #1 a=8'b00000101;
     #1 a=8'b11000111;
     #1 a=8'b11100100;
    end
endmodule
