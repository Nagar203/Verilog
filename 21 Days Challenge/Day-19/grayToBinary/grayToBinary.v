module grayToBinary(B,G);
  output wire [3:0] B;
  input wire [3:0] G;
  
  assign B[3] = G[3];
  
  xor OP1(B[2],G[2],B[3]);
  xor OP2(B[1],G[1],B[2]);
  xor OP3(B[0],G[0],B[1]);
  
endmodule
  