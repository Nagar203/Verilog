module fourBitCounter();
  input RST, CLK;
  output reg count[3:0];
  
  always @(posedge CLK, posedge CLK)
    begin
      if (RST) begin
        coun <= 0;
      end
      else
        count <= count + 1;
    end
endmodule
    