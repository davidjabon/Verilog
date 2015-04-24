`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2015 01:44:56 PM
// Design Name: 
// Module Name: clk_divided
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_divided #(CLK_DIVIDER_IN_BITS=8)(
    input clk_in,
    output clk_out
    );
    
reg  [CLK_DIVIDER_IN_BITS-1:0] counter = {CLK_DIVIDER_IN_BITS{1'b0}};
    
always @(posedge clk_in)
    counter <= counter + 1;
    
assign clk_out = counter[CLK_DIVIDER_IN_BITS-1];

endmodule
