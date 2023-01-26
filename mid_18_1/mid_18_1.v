`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2022 09:49:54 PM
// Design Name: 
// Module Name: mid_18_1
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


module mid_18_1
#(parameter N = 4)
(input wire sign_a, sign_b,
input wire [N-1:0] a,b,
output reg [N-1:0] mag_sum,
output  reg sign_sum);

reg gt, eq, sign;
reg [N-1:0] max, min;
reg [N-1:0] adder, subtractor;

always @(*)
begin
gt = (a>b);
max = (gt) ? a : b;
min = (gt) ? b : a;
adder = max + min;
subtractor = max - min;

eq = (sign_a == sign_b);

sign_sum = (gt) ? sign_a : sign_b;

mag_sum = (eq) ? adder : subtractor;

end
endmodule
