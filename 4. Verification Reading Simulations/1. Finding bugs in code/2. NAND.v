module top_module (input a, input b, input c, output out);//
    
    wire o1;
    assign out = ~o1;

    andgate inst1 ( o1, a, b, c, 1, 1 );

endmodule
