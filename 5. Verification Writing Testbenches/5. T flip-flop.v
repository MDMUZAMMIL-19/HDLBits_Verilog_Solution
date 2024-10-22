`timescale 1ps/1ps
module top_module ();

    reg clk, reset, t;
    wire q;
    
    tff dut(.clk(clk), .reset(reset), .t(t), .q(q));
     initial begin
        clk=1'b0;
        forever
        #5
        clk=~clk;
    end
    
    initial begin
        reset = 1'b0;
        #3;
        reset = 1'b1;
        #10;
        reset = 1'b0;   
    end
    
    always@(posedge clk)begin
        if(reset)begin
            t <= 1'b0;
        end
        else begin
            t <= 1'b1;
        end
    end

endmodule
