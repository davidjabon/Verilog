`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2015 01:52:27 PM
// Design Name: 
// Module Name: Toggle_Register
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

//If t=0, the output does not toggle.  If t=1, the output toggles on every rising clock edge.

module Toggle_Register(
    input clk,
    input reset,
    input t,
    output q
    );

    

    
dff_sync_reset dff(.clk(clk),.reset(reset),.d(t ^ q), .q(q));


endmodule
