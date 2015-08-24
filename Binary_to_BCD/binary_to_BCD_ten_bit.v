`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:45:40 05/24/2015 
// Design Name: 
// Module Name:    binary_to_BCD_fourteen_bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Implements the standard shift and add 3 algorithm
//
//////////////////////////////////////////////////////////////////////////////////
module binary_to_BCD_ten_bit(
    input [9:0] in,
    output [3:0] ones,
    output [3:0] tens,
    output [3:0] hundreds,
    output thousands
    );

wire [3:0] c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25;
wire [3:0] d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25;


assign d1 = {1'b0,in[9:7]};
assign d2 = {c1[2:0],in[6]};
assign d3 = {c2[2:0],in[5]};
assign d4 = {1'b0,c1[3],c2[3],c3[3]};
assign d5 = {c3[2:0],in[4]};
assign d6 = {c4[2:0],c5[3]};
assign d7 = {c5[2:0],in[3]};
assign d8 = {c6[2:0],c7[3]};
assign d9 = {c7[2:0],in[2]};
assign d10 = {1'b0,c4[3],c6[3],c8[3]};
assign d11 = {c8[2:0],c9[3]};
assign d12 = {c9[2:0],in[1]};




add3 m1(d1,c1);
add3 m2(d2,c2);
add3 m3(d3,c3);
add3 m4(d4,c4);
add3 m5(d5,c5);
add3 m6(d6,c6);
add3 m7(d7,c7);
add3 m8(d8,c8);
add3 m9(d9,c9);
add3 m10(d10,c10);
add3 m11(d11,c11);
add3 m12(d12,c12);




assign ones = {c12[2:0],in[0]};
assign tens = {c11[2:0],c12[3]};
assign hundreds = {c10[2:0],c11[3]};	 
assign thousands = c10[3];


endmodule