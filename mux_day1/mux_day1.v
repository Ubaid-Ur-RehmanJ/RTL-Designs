`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 05:10:05 PM
// Design Name: 
// Module Name: mux_day1
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


module mux_day1(
input wire [31:0] a_i, b_i,
//input wire [3:0] a_i, b_i,
input wire sel_i,
output wire [31:0] y);
//output wire [3:0] y);

assign y = sel_i ? a_i : b_i; //if the value of sel is 1, the output will have the values
                             // of a_i else it will have the value of b_i
endmodule
