`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2015 02:14:27 PM
// Design Name: 
// Module Name: clk_count_to
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
module clk_count_to #(HALF_PERIOD=20,BIT_LENGTH_OF_HALF_PERIOD=5)(
    input clk_in,
    output clk_out
    );
    
reg [BIT_LENGTH_OF_HALF_PERIOD-1:0] counter = {BIT_LENGTH_OF_HALF_PERIOD{1'b0}};
reg clk_reg = 1'b0;  

always @(posedge clk_in)
   begin
      if (counter == HALF_PERIOD - 1) 
           begin
              clk_reg <= ~clk_reg;
              counter <= {BIT_LENGTH_OF_HALF_PERIOD{1'b0}};
           end
       else counter = counter + 1;
   
   end

assign clk_out = clk_reg;   
    
    
endmodule
