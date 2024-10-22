module top_module (
    input clk,    // Clocks are used in sequential circuits
    input d,
    output reg q );//

    // Use a clocked always block
    //   copy d to q at every positive edge of clk
    //   Clocked always blocks should use non-blocking assignments
    
    always @(posedge clk)begin
        if(d)begin
            q<=d;
        end
        else begin
            q<=0;
        end
    end

endmodule
