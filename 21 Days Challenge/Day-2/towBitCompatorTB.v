module oneBitComapratorTB;
  reg [1:0] x,y;
  wire g,l,e;
  
  twoBitComparator DUT(.tbc_eq(e),.tbc_lt(l),.tbc_gt(g),.A(x),.B(y));
  
  initial
    begin
      #0 x=2'b00; y=2'b00;
      #10 x=2'b00; y=2'b01;
      #20 x=2'b00; y=2'b10;
      #30 x=2'b00; y=2'b11;
      #40 x=2'b01; y=2'b00;
      #50 x=2'b01; y=2'b01;
      #60 x=2'b01; y=2'b10;
      #70 x=2'b01; y=2'b11;
      #80 x=2'b10; y=2'b00;
      #90 x=2'b10; y=2'b01;
      #100 x=2'b10; y=2'b10;
      #110 x=2'b10; y=2'b11;
      #120 x=2'b11; y=2'b00;
      #130 x=2'b11; y=2'b01;
      #140 x=2'b11; y=2'b10;
      #150 x=2'b11; y=2'b11;
    end
  
  initial
    begin
      $monitor("$time %b%b%b%b, e=%b, l=%b g=%b", x[1],x[0],y[1],y[0],e,l,g);
    end
endmodule