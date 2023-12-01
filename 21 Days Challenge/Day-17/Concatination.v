module Concatination(a,b);
  input wire [3:0] a,b;
  wire [7:0] c,d,e;
  assign c = {b,a};
  assign d = {4'b0010,4'b0101};
  assign e = {2{4'b0010}};
    
  initial
    begin  
      $display("01. Concatination: A=0010 , B=0101, C=%b",d);
      $display("02. Concatination: A=0010 , B=0101, C=%b",e);
    end
  
  always @(a,b)
    begin
      $display($time," Concatination: A=%b , B=%b, C=%b",a,b,c);
    end 
  
   
endmodule