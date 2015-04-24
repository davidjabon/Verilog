`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2015 02:28:53 PM
// Design Name: 
// Module Name: clk_count_to_tb
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


module clk_count_to_tb();
    reg clk;
    wire clk_out;
 
clk_count_to #(.HALF_PERIOD(7),.BIT_LENGTH_OF_HALF_PERIOD(3)) uut(.clk_in(clk),.clk_out(clk_out));

initial
    begin
       clk=1'b0;
    end
    
always #10 clk =~clk;
   
   
   
   
endmodule