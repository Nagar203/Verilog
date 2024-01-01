module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire carry;
    wire [31:0]  add_sub;
    assign add_sub = {32{sub}}^b;
    
    add16 ADD1(.a(a[15:0]), .b(add_sub[15:0]), .cin(sub), .sum(sum[15:0]), .cout(carry));
    add16 ADD2(.a(a[31:16]), .b(add_sub[31:16]), .cin(carry), .sum(sum[31:16]), .cout());
    
endmodule