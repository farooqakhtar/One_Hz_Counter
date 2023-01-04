`timescale 1ns / 1ps

module Counter(
    input clk_fpga, // 100MHz
    input reset,
    output [6:0] seg, // for each LED seg
    output [3:0] anode_sel, // digit block selection
    output led // LED
    );

    reg [3:0] counter_10; // 0 to 9
        
    // enable the first seven-seg block:
    assign anode_sel = 4'b1110; // active low, so set 4th bit to 0
    
    // instantiate display module:
    
    Seven_Seg_Display SSD(counter_10, seg);
    
    // divide 100MHz to 1Hz
    
    OneHz_Gen OneHz(clk_fpga, clk_1Hz);
    
    // create 1Hz 0 to 9 counter
    
    always @(posedge clk_1Hz, posedge reset)
        if(reset || counter_10 == 9)  // count from 0 to 9
            counter_10 <= 0;
        else
            counter_10 <= counter_10 + 1'b1;
    
    // flash an LED every ten seconds
    assign led = (counter_10 == 9);
    
endmodule
