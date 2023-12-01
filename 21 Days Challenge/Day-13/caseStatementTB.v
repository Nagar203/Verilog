module caseStatementTB;
  reg [7:0] A0, B0, OUT0;
  reg [1:0] OPCODE0;
  
  caseStatement ALU(.OPCODE(OPCODE0), .A(A0), .B(B0), .OUT(OUT0));
  
  initial
    begin
      #5 A0=8'b00000011; B0=8'b00000010; OPCODE0= 2'b00;
      #5 A0=8'b00000111; B0=8'b00000010; OPCODE0= 2'b01;
      #5 A0=8'b00000110; B0=8'b00000010; OPCODE0= 2'b10;
      #5 A0=8'b00000110; B0=8'b00000010; OPCODE0= 2'b11;
    end
  
  initial
    begin
      $monitor($time," OPCODE=%b, A=%b, B=%b, Ouput=%b", OPCODE0, A0, B0, OUT0);
    end
endmodule