module eightRatioThreePriorityEncode(INPUT, OUT);
  input [7:0] INPUT;
  output reg [2:0] OUT;
  
  always @(*)
  begin
    if(INPUT[0])
      OUT = 3'b000;
    else if(INPUT[1])
      OUT = 3'b001;
    else if(INPUT[2])
      OUT = 3'b010;
    else if(INPUT[3])
      OUT = 3'b011;
    else if(INPUT[4])
      OUT = 3'b100;
    else if(INPUT[5])
      OUT = 3'b101;
    else if(INPUT[6])
      OUT = 3'b110;
    else if(INPUT[7])
      OUT = 3'b111;
  end
endmodule
    