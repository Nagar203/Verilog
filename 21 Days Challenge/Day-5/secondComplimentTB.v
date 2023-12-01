module secondComplimentTB;
  reg[5:0] Num, Y;
  
  secondCompliment DUT(.Yout(Y), .Number(Num));
  
  initial
    begin
      #0 Num=6'b111111;
      #10 Num=6'b11010;
      #20 Num=6'b100011;
      #30 Num=6'b111100;
    end
  
  initial
    begin
      $monitor("$time input=%b, SecondCompliment=%b", Num, Y);
    end
endmodule