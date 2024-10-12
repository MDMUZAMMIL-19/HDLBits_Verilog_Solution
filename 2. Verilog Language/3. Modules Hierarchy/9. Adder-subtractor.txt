module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
  wire cout1, cout2;
  wire [15:0] sum1;
  wire [31:16] sum2;
  wire [31:0] bXOR;
    
  assign bXOR = {32{sub}}^b;
  assign sum = {sum2, sum1};
    
    add16 dut1(.a(a[15:0]), .b(bXOR[15:0]), .cin(sub), .cout(cout1), .sum(sum1));
    add16 dut2(.a(a[31:16]), .b(bXOR[31:16]), .cin(cout1), .cout(cout2), .sum(sum2));
      
endmodule