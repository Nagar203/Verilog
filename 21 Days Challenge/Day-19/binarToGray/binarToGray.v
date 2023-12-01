module binarToGray(B,G);
  input wire [3:0] B;
  output wire [3:0] G;
  
  assign G[3] = B[3];
  
  xor OP1(G[2],B[3],B[2]);
  xor OP2(G[1],B[2],B[1]);
  xor OP3(G[0],B[1],B[0]);
  
endmodule
  