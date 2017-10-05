`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Module Name: synchronize
// Project Name: 
//
// Revision 0.01 - File Created
// Additional Comments:  Basic 2-stage syncrhonizer for an asynchronous input; a chain of 2 DFF's to limit metastability
//                       Intended for when the asyncrhonous signal period is greater than clock period
// 
//////////////////////////////////////////////////////////////////////////////////


module synchronize(
    input clk,
    input async_in,
    input reset,
    output reg sync_out
    );

reg meta;

always @(posedge clk) 
    if (reset)
       begin
        meta <= 1'b0;
        sync_out <= 1'b0;
       end
    else
       begin
        meta <= async_in;
        sync_out <= meta;
       end


endmodule
