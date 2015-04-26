`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:01:09 04/26/2015
// Design Name:   decoder_2_4
// Module Name:   D:/Digilent/Data/Xilinx/Projects/ISE_12_4/Decoders/decoder_2_4_tb.v
// Project Name:  Decoders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_2_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_2_4_tb;

	// Inputs
	reg [1:0] code_in;
	reg clk;

	// Outputs
	wire [3:0] code_out;

	// Instantiate the Unit Under Test (UUT)
	decoder_2_4 uut (
		.code_in(code_in), 
		.code_out(code_out)
	);

	initial begin
		// Initialize Inputs
		code_in = 0;
		clk=0;
	  end
	  
	  always 
	      begin
			
			#10 clk <=~clk;
			code_in <= code_in + 1;
			
			end

      
endmodule

