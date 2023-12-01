function automatic integer factorial(input[9:0]a);
  begin
    if(a == 1)
      factorial = 1;
    else
      factorial = a*factorial(a-1);
  end
endfunction


module autoFunction(a,result);
  input wire [9:0] a;
  output reg [9:0]result;
  always @(a)
    begin
      result = factorial(a);
    end
endmodule