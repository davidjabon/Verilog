`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:28:12 05/24/2015
// Design Name:   binary_to_BCD_eight_bit
// Module Name:   D:/Digilent/Data/Xilinx/Projects/ISE_12_4/Binary_to_BCD_Eight_Bit/binary_to_BCD_eight_bit_tb.v
// Project Name:  Binary_to_BCD_Eight_Bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: binary_to_BCD_eight_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module binary_to_BCD_eight_bit_tb;

	// Inputs
	reg [7:0] in;

	// Outputs
	wire [3:0] ones;
	wire [3:0] tens;
	wire [1:0] hundreds;
	
	

	// Instantiate the Unit Under Test (UUT)
	binary_to_BCD_eight_bit uut (
		.in(in), 
		.ones(ones), 
		.tens(tens), 
		.hundreds(hundreds)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		
		for (in =0;in< 256;in = in +1) begin
		
		#10
		$display(" in = %d  hundreds = %d tens = %d ones = %d",in, hundreds, tens, ones);
		end
        
		// Add stimulus here

	end
      
endmodule

