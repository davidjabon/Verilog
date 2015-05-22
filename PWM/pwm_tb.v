`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2015 09:52:09 AM
// Design Name: 
// Module Name: pwm_tb
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


module pwm_tb();
    reg clk;
    reg enable;
    wire out;
   
pwm  #(.CLK_PERIOD(20)) uut (.clk(clk),.enable(enable),.pwm_period(13),.out(out));

initial
    begin
        clk=1'b1;
        enable = 1'b0;
        #100;
        enable =1'b1;
        #500;
        enable = 1'b0;
    end
    
always #10 clk = ~clk;   
   
endmodule
