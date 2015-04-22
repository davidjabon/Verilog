`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2015 05:12:52 PM
// Design Name: 
// Module Name: mux_2_1_tb
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


module mux_2_1_tb();

reg sel;
reg [15:0] in0;
reg [15:0] in1;
wire [15:0] out;    
    
mux_2_1 #(.BUS_WIDTH(16)) uut(.sel(sel),.in0(in0),.in1(in1),.out(out));

initial
    begin
    sel = 1'b1;
    in0=16'h5;
    in1=16'hA; 
    #10
    sel = 1'b0;
    #10
    sel = 1'b1;
    #10
    in0=16'h3;
    #10
    in1 = 16'hC;
    end    
    
       

  
    
endmodule
