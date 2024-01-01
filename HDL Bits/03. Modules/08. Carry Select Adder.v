module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire carry;
    wire [15:0] sum1, sum2;
    add16 ADD1(.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(carry));
    add16 ADD2(.a(a[31:16]), .b(b[31:16]), .cin(0), .sum(sum1), .cout());
    add16 ADD3(.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(sum2), .cout());
    always @(sum1, sum2, carry)
        case(carry)
            0:  sum[31:16] = sum1;
            1: sum[31:16] = sum2;
        endcase
endmodule