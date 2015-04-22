`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2015 01:52:27 PM
// Design Name: 
// Module Name: dff_sync_reset
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


module dff_sync_reset(
    input clk,
    input reset,
    input d,
    output reg q
    );
    
    
   always @(posedge clk)
      if (reset) begin
         q <= 1'b0;
      end 
      else begin
         q <= d;
      end
                            
                            
    
    
endmodule
