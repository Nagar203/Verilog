module fourRatioOneMux(Y, S, A, B);
  input A, B;
  input [1:0] S;
  output Y;
  wire t1, t2;
  twoRatioOneMux M1(t1, S[0], A, B);
  twoRatioOneMux M2(Y, S[1], t1, t1);
endmodule

module twoRatioOneMux(Y0, S0, A0, B0);
  input A0, B0, S0;
  output Y0;
  reg Y0;
  always @(S0,A0,B0)
    begin 
      if(S0==0)
        Y0<=A0;
      else
        Y0<=B0;
    end    
endmodule