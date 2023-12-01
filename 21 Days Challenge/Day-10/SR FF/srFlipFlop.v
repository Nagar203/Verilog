module srFlipFlop(S, R, CLK, Q);
  input S, R, CLK;
  output reg Q=1;
  
  always @(posedge CLK, Q, S, R)
    begin
      if (S==0)
        begin
          if (R==0)
            Q = Q;
          if (R==1)
            Q=0;
        end
      
      if(S==1)
        begin
          if(R==0)
            Q=1;
          if(R==1)
            Q=1'bX;
        end
    end
endmodule