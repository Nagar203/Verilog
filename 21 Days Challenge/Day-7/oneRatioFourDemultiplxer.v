module oneRatioFourDemultiplxer(S, I, Y);
  input[1:0] S;
  input I;
  output [3:0]Y;
  wire[1:0] t1;
  oneRatioTwoDemultiplxer M1(S[1], I, t1);
  oneRatioTwoDemultiplxer M2(S[0], t1[0], Y[1:0]);
  oneRatioTwoDemultiplxer M3(S[0], t1[1], Y[3:2]);
endmodule

module oneRatioTwoDemultiplxer(S0, I0, Y0);
  input S0, I0;
  output[1:0] Y0;
  
  and A1(Y0[0],!S0,I0);
  and A1(Y0[1],S0,I0);
endmodule