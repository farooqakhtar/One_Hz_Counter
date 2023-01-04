`timescale 1ns / 1ps

module Seven_Seg_Display(
    input [3:0] digit, // 4-bit value to be displayed, 0 thru 9
    output reg [6:0] seven_seg // cathodes of seven_seg display to be selected (pull LOW to turn seg ON)
    );
    
    // maps between segments and keywords
    parameter zero = 7'b100_0000;
    parameter one = 7'b111_1001;
    parameter two = 7'b010_0100;
    parameter three = 7'b011_0000;
    parameter four = 7'b001_1001;
    parameter five = 7'b001_0010;
    parameter six = 7'b000_0010;
    parameter seven = 7'b111_1000;
    parameter eight = 7'b000_0000;
    parameter nine = 7'b001_0000;
    
    always @(digit)
    case(digit)
    0: seven_seg = zero;
    1: seven_seg = one;
    2: seven_seg = two;
    3: seven_seg = three;
    4: seven_seg = four;
    5: seven_seg = five;
    6: seven_seg = six;
    7: seven_seg = seven;
    8: seven_seg = eight;
    9: seven_seg = nine;
    default: seven_seg = zero;
    endcase

endmodule
