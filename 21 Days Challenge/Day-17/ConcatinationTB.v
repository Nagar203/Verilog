module ConcatinationTB();
  reg [3:0] a, b;
  Concatination dut(.a(a),.b(b));
  
  initial
    begin
     #1 a=4'b0001; b=4'b0010;
     #1 a=4'b0101; b=4'b0110;
     #1 a=4'b0111; b=4'b0010;
    end
endmodule
