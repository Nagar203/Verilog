module threeRationEigthDecoder(I, Y);
  input[2:0] I;
  output[7:0] Y;
  wire[1:0] t1;
  oneRationTwoDecoder DC1(I[2],t1);
  twoRationFourDecoder DC2(I[1:0], Y[3:0], t1[0]);
  twoRationFourDecoder DC3(I[1:0], Y[7:4], t1[1]);
endmodule

module twoRationFourDecoder(I1, Y0, E0);
  input [1:0]I1;
  input E0;
  output[3:0] Y0;
  
  and o1(Y0[0],!I1[0],!I1[1],E0);
  and o2(Y0[1],I1[0],!I1[1],E0);
  and o3(Y0[2],!I1[0],I1[1],E0);
  and o4(Y0[3],I1[0],I1[1],E0);
  
endmodule

module oneRationTwoDecoder(I0, Y0);
  input I0;
  output[1:0] Y0;
  
  not n1(Y0[0], I0);
  not n2(Y0[1], !I0);
  
endmodule