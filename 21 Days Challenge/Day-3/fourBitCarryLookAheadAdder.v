module fourBitCarryLookAheadAdder(S0,COUT, A0, B0, C0);
  input [3:0] A0, B0;
  input C0;
  reg [2:0] COU;
  output COUT;
  output [3:0] S0;
  ontBitCarryLookAheadAdder ADD1(S0[0],COU[0],A0[0],B0[0],C0);
  ontBitCarryLookAheadAdder ADD2(S0[1],COU[1],A0[1],B0[1],COU[0]);
  ontBitCarryLookAheadAdder ADD3(S0[2],COU[2],A0[2],B0[2],COU[1]);
  ontBitCarryLookAheadAdder ADD4(S0[3],COUT,A0[3],B0[3],COU[2]);
endmodule
  
module ontBitCarryLookAheadAdder(Sout,Cout, A, B, C);
  input A, B, C;
  output Sout, Cout;
  sum s1(Sout, A, B, C);
  carry C1(Cout,A, B,C);
endmodule
  
module sum(S,A,B,C);
  input A,B,C;
  output S;
  xor xs(S, A, B, C);
endmodule

  module carry(Ca, A, B, C);
  input A,B,C;
  output Ca;
  wire t1, t2, t3;
    xor xc(t1, A, B);
    and ac(t2, t1, C);
    and ac(t3, A, B);
    or ac(Ca, t3, t2);
endmodule