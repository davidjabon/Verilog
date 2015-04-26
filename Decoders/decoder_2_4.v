`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:03 04/26/2015 
// Design Name: 
// Module Name:    decoder_2_4 
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
module decoder_2_4(
    input [1:0] code_in,
    output reg [3:0] code_out
    );

always @(code_in)
  case (code_in)
     2'b00: code_out =4'b0001;
     2'b01: code_out =4'b0010;
     2'b10: code_out =4'b0100;
     2'b11: code_out =4'b1000;
  endcase

endmodule
