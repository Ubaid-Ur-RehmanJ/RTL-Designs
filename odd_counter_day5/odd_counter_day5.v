`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2023 03:54:39 PM
// Design Name: 
// Module Name: odd_counter_day5
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


module odd_counter_day5(
input wire clk, reset,
output reg [7:0] cnt_o
    );
    reg [7:0] counter = 1;
    always @(posedge clk)
    begin
    if (reset)
    begin
    cnt_o <= 0;
    end
    else
    begin
    counter <= counter + 2;
    cnt_o <= counter;
    end
    end
endmodule
