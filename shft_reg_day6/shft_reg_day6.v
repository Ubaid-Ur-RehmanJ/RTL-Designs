`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2023 01:10:18 AM
// Design Name: 
// Module Name: shft_reg_day6
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


module shft_reg_day6(
input wire clk, reset, shft,
input wire [3:0] x_i,
output reg [3:0] shft_left, shft_right
    );
    //if the shft signal will be high, it will shift left else shft right will be done
    always @(posedge clk)
    begin
    if (reset)
    begin
    shft_left <= 0;
    shft_right <= 0;
    end
    
    else if (shft)
    begin
    shft_right <= {1'b0, x_i[3:1]};
    shft_left <= x_i;
    end
    
    else
    begin
    shft_right <= x_i;
    shft_left <= {x_i[2:0], 1'b0};
    end
    end
endmodule
