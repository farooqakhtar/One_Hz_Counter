`timescale 1ns / 1ps

module OneHz_Gen(
    input clk_100M,
    output clk_1
    );
    
    reg [25:0] counter = 0;
    reg clk_out = 0;
    
    always @(posedge clk_100M) begin
        if (counter == 49_999_999) // flip at halfway point
        begin
            clk_out <= ~clk_out;
            counter <= 0;
        end
        else
            counter <= counter + 1;
    end
    
    assign clk_1 = clk_out;
    
endmodule
