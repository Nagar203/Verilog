task helloWorld;
  $display("Hello World!");
endtask

task additions(input[3:0] x,y, output [4:0] sum);
  begin    
    helloWorld();
    sum = x+y;
  end
endtask


module taskCall(a,b,sum);
  input wire [3:0] a,b;
  output reg [4:0] sum;
  always @(a,b)
    begin
      additions(a,b,sum);
    end
endmodule