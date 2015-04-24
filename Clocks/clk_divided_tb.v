`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2015 01:53:27 PM
// Design Name: 
// Module Name: clk_divided_tb
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


module clk_divided_tb();
    reg clk;
    wire clk_out;
 
clk_divided #(.CLK_DIVIDER_IN_BITS(2)) uut(.clk_in(clk),.clk_out(clk_out));

initial
    begin
       clk=1'b0;
    end
    
always #10 clk =~clk;
   
   
   
   
endmodule
