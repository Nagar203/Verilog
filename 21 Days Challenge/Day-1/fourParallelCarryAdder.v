module fourBitRippleCarryAdder(s,c4, A, B, Cin);
 input [3:0] A, B;
 input Cin;
 output [3:0] s;
 wire [2:0] cout;
 output c4;
 
 oneBitAdder Add1 (s[0],cout[0],A[0],B[0],Cin);
 oneBitAdder Add2 (s[1],cout[1],A[1],B[1],cout[0]);
 oneBitAdder Add3 (s[2],cout[2],A[2],B[2],cout[1]);
 oneBitAdder Add4 (s[3],c4,A[3],B[3],cout[2]);
 
endmodule

module oneBitAdder(s_out, c_out, l,m,n);
input l,m,n;
output s_out, c_out;
sumModule s1 (s_out, l,m,n);
carryModule c1 (c_out,l,m,n);
endmodule

module sumModule(sumOut, x,y,c_in);
input x,y,c_in;
output sumOut;
wire t;
xor x1 (t,x,y);
xor x2 (sumOut,t, c_in);
endmodule


module carryModule(carr_out, A, B, Cin);
output carr_out;
input A, B, Cin;
wire t1, t2, t3;
and a1 (t1,A,B);
and a2 (t2,B,Cin);
and a3 (t3,A,Cin);
or o1 (carr_out, t1, t2, t3);
endmodule
