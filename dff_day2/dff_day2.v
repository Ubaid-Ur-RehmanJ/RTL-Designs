`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 08:32:19 PM
// Design Name: 
// Module Name: dff_day2
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


module dff_day2(
input wire d_i, clk, rst,
output reg q_norst_o, q_syncrst_o, q_asyncrst_o
    );
    
    always @(posedge clk)
    begin
    q_norst_o <= d_i;
    end
    
    always @(posedge clk)
    begin
    if (rst)
    q_syncrst_o <= 0;
    else 
    q_syncrst_o <= d_i;
    end
    
    always @(posedge clk or posedge rst)
    begin
    if (rst)
    q_asyncrst_o = 0;
    else
    q_asyncrst_o = d_i;
    end
    
endmodule
