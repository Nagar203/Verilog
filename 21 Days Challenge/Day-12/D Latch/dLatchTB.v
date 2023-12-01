module dLatchTB;
  reg D0; 
  reg E0=1;
  wire Q0; 
  
  dLatch DUT(.Q(Q0), .D(D0), .E(E0));
  
  initial
    begin
      # 2 D0=0; E0=1;
      # 2 D0=1; E0=1;
      # 2 D0=1; E0=0;
      # 2 D0=0; E0=0;
      $finish;
    end
  
  initial
    begin
      $monitor($time,"  E=%b, D=%b, Q=%B",E0 ,D0,Q0);
    end
endmodule
    