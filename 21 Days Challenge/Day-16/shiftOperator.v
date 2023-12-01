module shifting(a);
  input wire [7:0] a;
  wire [7:0] b,c,d;
  assign b = a>>2;
  assign c = a<<2;
  assign d = a<<<2;
    
  always @(a)
    begin
      $monitor($time," Right Shift By 2: A=%b , B=%b",a,b);
    end 
  
   always @(a)
    begin
      $monitor($time," Left Shift By 2: A=%b , B=%b",a,c);
    end 
  
   always @(a)
    begin
       $monitor($time," Arithmatic Shift By 2: A=%b , B=%b",a,d);
    end 
   
endmodule