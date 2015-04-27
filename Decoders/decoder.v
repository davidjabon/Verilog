`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:04:07 04/26/2015 
// Design Name: 
// Module Name:    decoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module decoder #(parameter BITS=3)(
    input [BITS-1:0] code_in,
    output [(1<<BITS)-1:0] code_out
    );
	 
assign code_out ={{((1<<BITS)-1){1'b0}},{1'b1}} << code_in;


endmodule
