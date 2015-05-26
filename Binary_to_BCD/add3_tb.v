`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:11:26 05/24/2015
// Design Name:   add3
// Module Name:   D:/Digilent/Data/Xilinx/Projects/ISE_12_4/Binary_to_BCD_Eight_Bit/add3_tb.v
// Project Name:  Binary_to_BCD_Eight_Bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: add3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module add3_tb;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	add3 uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		#10 in = 4'b0000;
      #10 in = 4'b0001;
		#10 in = 4'b0010;
		#10 in = 4'b0011;
		#10 in = 4'b0100;
      #10 in = 4'b0101;
		#10 in = 4'b0110;
		#10 in = 4'b0111;
		#10 in = 4'b1000;
		#10 in = 4'b1001;
      #10 in = 4'b1010;
		#10 in = 4'b1011;
		#10 in = 4'b1100;
      #10 in = 4'b1101;
		#10 in = 4'b1110;
		#10 in = 4'b1111;
        
		// Add stimulus here

	end
      
endmodule

