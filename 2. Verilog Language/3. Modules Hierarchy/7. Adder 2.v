module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    
    wire d_carry;
        add16 dut1(.a(a[15:0]), .b(b[15:0]), .sum(sum[15:0]), .cout(d_carry));
        add16 dut2(.a(a[31:16]), .b(b[31:16]), .sum(sum[31:16]), .cin(d_carry));
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign sum = a^b^cin;
    assign cout = a&b | cin & (a^b);

endmodule