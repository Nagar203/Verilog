module encoder(A,B,E,D);
  input wire A,B,E;
  output reg [0:3]  D;
  wire An, Bn, En;
  
  
  not g1(An,A);
  not g2(Bn,B);
  not g3(En,E);
  and g4(D[0],An,Bn,En);
  and g5(D[1],An,B,En);
  and g6(D[2],A,Bn,En);
  and g7(D[3],A,B,En);

endmodule