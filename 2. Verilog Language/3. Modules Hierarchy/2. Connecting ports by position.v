module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a dut(out1, out2, a, b, c, d); // we have connected the ports by position
endmodule