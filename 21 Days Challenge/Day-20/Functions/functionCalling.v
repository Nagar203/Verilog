function [4:0] sum(input [3:0] a,b);
  begin
    sum = a+b;
  end
endfunction


module functionCall(a,b,addition);
  input wire [3:0] a,b;
  output reg [4:0] addition;
  always @(a,b)
    begin
      addition = sum(a,b);
      
    end
endmodule