`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 05:50:46 PM
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1(
input wire [7:0] a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8,
input wire [2:0] sel,
output reg [7:0] y
    );
    
    always @(*)
    begin
    case(sel)
    3'b000 : y = a_1;
    3'b001 : y = a_2;
    3'b010 : y = a_3;
    3'b011 : y = a_4;
    3'b100 : y = a_5;
    3'b101 : y = a_6;
    3'b110 : y = a_7;
    3'b111 : y = a_8;
    default : y = 0;
    endcase
    end
    
endmodule
