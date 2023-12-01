module caseStatement(OPCODE, A, B, OUT);
  input [1:0] OPCODE;
  input [7:0] A, B;
  output reg [7:0] OUT;
  
  parameter ADD=2'b00, SUB=2'b01, MUL=2'b10, DIV=2'b11;


  always @(*)
  begin
    case(OPCODE)
      ADD: OUT = A+B;
      SUB: OUT = A-B;
      MUL: OUT = A*B;
      DIV: OUT = A/B;
    endcase
  end
endmodule
    