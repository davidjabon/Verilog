`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2015 11:43:21 AM
// Design Name: 
// Module Name: quadrature_encoder_tb
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
//////////////////////////////////////////////////////////////////////////////////s

module quadrature_encoder_tb();

    reg clk;
     reg reset;
     reg a;
     reg b;
     wire dir;
    wire [31:0] count;
  
quadrature_encoder uut(.clk(clk),.reset(reset),.a(a),.b(b),.dir(dir),.count(count));

initial
begin
clk=1'b1;
reset = 1'b0;
a=1'b0;
b=1'b0;
//forward
#8 a = 1'b1;
#8 b = 1'b1;
#8 a = 1'b0;
#8 b = 1'b0;
//forward
#8 a = 1'b1;
#8 b = 1'b1;
#8 a = 1'b0;
#8 b = 1'b0;
//forward
#8 a = 1'b1;
#8 b = 1'b1;
#8 a = 1'b0;
#8 b = 1'b0;
//backward
#8 b = 1'b1;
#8 a = 1'b1;
#8 b = 1'b0;
#8 a = 1'b0;
//backward
#8 b = 1'b1;
#8 a = 1'b1;
#8 b = 1'b0;
#8 a = 1'b0;
//forward
#8 a = 1'b1;
#8 b = 1'b1;
#8 a = 1'b0;
#8 b = 1'b0;

#1 reset = 1'b1;
#2 reset = 1'b0;


//forward
#8 a = 1'b1; 
#8 b = 1'b1;
#8 a = 1'b0;
#8 b = 1'b0;
//forward
#8 a = 1'b1;
#8 b = 1'b1;
#8 a = 1'b0;
#8 b = 1'b0;
//forward
#8 a = 1'b1;
#8 b = 1'b1;
#8 a = 1'b0;
#8 b = 1'b0;
//backward
#8 b = 1'b1;
#8 a = 1'b1;
#8 b = 1'b0;
#8 a = 1'b0;
//backward
#8 b = 1'b1;
#8 a = 1'b1;
#8 b = 1'b0;
#8 a = 1'b0;
//forward
#8 a = 1'b1;
#8 b = 1'b1;
#8 a = 1'b0;
#8 b = 1'b0;




end


always #1 clk = ~clk;


/*forward
always 
begin
#8 a = 1'b1;
#8 b = 1'b1;
#8 a = 1'b0;
#8 b = 1'b0;
end
*/ 

/* backward
always 
begin
#8 b = 1'b1;
#8 a = 1'b1;
#8 b = 1'b0;
#8 a = 1'b0;
end
*/


endmodule
