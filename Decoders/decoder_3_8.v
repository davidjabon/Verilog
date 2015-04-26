`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:50:49 04/26/2015 
// Design Name: 
// Module Name:    decoder_3_8 
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
module decoder_3_8(
    input [2:0] code_in,
    output reg [7:0] code_out
    );

always @(code_in)
  case (code_in)
     3'b000: code_out =8'b00000001;
     3'b001: code_out =8'b00000010;
     3'b010: code_out =8'b00000100;
     3'b011: code_out =8'b00001000;
	  3'b100: code_out =8'b00010000;
     3'b101: code_out =8'b00100000;
     3'b110: code_out =8'b01000000;
     3'b111: code_out =8'b10000000;
	  endcase

endmodule
