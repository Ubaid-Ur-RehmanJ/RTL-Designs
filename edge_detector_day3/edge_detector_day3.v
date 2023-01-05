`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2023 12:03:41 PM
// Design Name: 
// Module Name: edge_detector_day3
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


module edge_detector_day3(
input wire clk, reset, a_i,
output wire rising_edge, falling_edge
    );
    reg a_ff;
    always @(posedge clk or posedge reset)
    begin
    if (reset)
    begin
    a_ff <= 0;
    end
    else
    a_ff <= 1;
    end
    
    assign rising_edge = ~a_ff & a_i;
    assign falling_edge = a_ff & ~a_i;
    
    
endmodule
