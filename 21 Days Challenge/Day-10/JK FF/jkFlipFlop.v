module jkFlipFlop(J, K, CLK, Q);
  input J, K, CLK;
  output reg Q=1;
  
  always @(posedge CLK, J or K or Q)
    begin
      if(J==0)
        begin
          if(K==0)
            Q=Q;
          if(K==1)
            Q=0;
        end
      
      if(J==1)
        begin
          if(K==0)
            Q=1;
          if(K==1)
            Q=~Q;
        end
    end
    
endmodule