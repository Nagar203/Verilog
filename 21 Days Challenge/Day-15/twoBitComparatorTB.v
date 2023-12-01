module twoBitComparatorTB;
  reg [1:0] INPUT01, INPUT02;
  reg EQUAL0, GREATER0, LESS0;
  
  twoBitComparator PE(.INPUT1(INPUT01), .INPUT2(INPUT02), .EQUAL(EQUAL0), .GREATER(GREATER0), .LESS(LESS0));
  
  initial
    begin
      #1 INPUT01=2'b00; INPUT02=2'b00;
      #1 INPUT01=2'b00; INPUT02=2'b01;
      #1 INPUT01=2'b00; INPUT02=2'b10;
      #1 INPUT01=2'b00; INPUT02=2'b11;
      #1 INPUT01=2'b01; INPUT02=2'b00;
      #1 INPUT01=2'b01; INPUT02=2'b01;
      #1 INPUT01=2'b01; INPUT02=2'b10;
      #1 INPUT01=2'b01; INPUT02=2'b11;
      
      #1 INPUT01=2'b10; INPUT02=2'b00;
      #1 INPUT01=2'b10; INPUT02=2'b01;
      #1 INPUT01=2'b10; INPUT02=2'b10;
      #1 INPUT01=2'b10; INPUT02=2'b11;
      #1 INPUT01=2'b11; INPUT02=2'b00;
      #1 INPUT01=2'b11; INPUT02=2'b01;
      #1 INPUT01=2'b11; INPUT02=2'b10;
      #1 INPUT01=2'b11; INPUT02=2'b11;
    end
  
  initial
    begin
      $monitor($time," INPUT1=%b, INPUT2=%b, EQUAL0=%b, GREATER0=%b, LESS0=%b", INPUT01, INPUT02, EQUAL0, GREATER0, LESS0);
    end
endmodule