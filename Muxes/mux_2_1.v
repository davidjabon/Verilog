`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2015 05:06:41 PM
// Design Name: 
// Module Name: mux_2_1
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


module mux_2_1 #(parameter BUS_WIDTH=32)(
    input sel,
    input [BUS_WIDTH-1:0] in0,
    input [BUS_WIDTH-1:0] in1,
    output [BUS_WIDTH-1:0] out
    );
    
assign out = sel?in1:in0;

    
endmodule
