`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2015 05:46:59 PM
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1 #(BUS_WIDTH = 32)(
    input [1:0] sel,
    input [BUS_WIDTH-1:0] in00,
    input [BUS_WIDTH-1:0] in01,
    input [BUS_WIDTH-1:0] in10,
    input [BUS_WIDTH-1:0] in11,
    output reg [BUS_WIDTH-1:0] out
    );                   
                        
                                                 
always @(sel, in00, in01,in10,in11)   
case(sel)
    2'b00 : out=in00;
    2'b01 : out=in01;
    2'b10 : out=in10;
    2'b11 : out=in11;
endcase

endmodule
	
				