module secondCompliment(Yout, Number);
  input[5:0] Number;
  output [5:0] Yout;
  wire [5:0] t1;
  firstCompliment FC(t1, Number);
  assign Yout = t1 + 1'b1;
endmodule

module firstCompliment(Y0, Number);
  input[5:0] Number;
  output [5:0] Y0;
  assign Y0 = ~Number;
endmodule