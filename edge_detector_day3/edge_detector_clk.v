`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2023 12:29:14 PM
// Design Name: 
// Module Name: edge_detector_clk
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


module edge_detector_clk(
input wire clk, reset,
output reg rising_edge, falling_edge
    );
    always @(posedge clk)
    begin
    if (reset)
    begin
    rising_edge <= 0;
    falling_edge <= 0;
    end
    
    else if (clk)
    begin
    rising_edge <= 1;
    falling_edge <= 0;
    end
    
    else
    begin
    rising_edge <= 0;
    falling_edge <= 1;
    end
    end
endmodule
