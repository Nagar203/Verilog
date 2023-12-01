module dLatch(D,E,Q);
  input D, E;
  output Q;
  
  assign Q = E ? D: Q;
endmodule
    