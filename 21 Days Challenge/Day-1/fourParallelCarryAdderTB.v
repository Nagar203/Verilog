module fourBitRippleCarryAdderTb;
reg [3:0] ta,tb; 
reg tc;
wire [3:0] tsum; 
wire tcr;
  fourBitRippleCarryAdder DUT (.s(tsum), .c4(tcr),.A(ta), .B(tb), .Cin(tc));
initial
begin
#0 ta=4'b0000; tb=4'b0000; tc=1'b1;
#10 ta=4'b0100; tb=4'b0011; tc=1'b1;
#20 ta=4'b0011; tb=4'b0111; tc=1'b1;
#30 ta=4'b1000; tb=4'b0100; tc=1'b0;
#40 ta=4'b0101; tb=4'b0101; tc=1'b1;
end

initial
begin
  $monitor ("$time ta=%d tb=%d tc=%c tsum=%d tcr=%d",ta,tb,tc,tsum,tcr);
end
endmodule