`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 09:26:01 PM
// Design Name: 
// Module Name: testbench
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


module testbench
#(parameter N = 4)
();

reg sign_a, sign_b;
reg [N-1:0] a,b;
wire [N-1:0] mag_sum;
wire sign_sum;

mid_18_1 #(.N(N)) uut (.sign_a(sign_a), .sign_b(sign_b), .a(a), .b(b), .mag_sum(mag_sum), .sign_sum(sign_sum));

initial
begin

sign_a = 0;
sign_b = 0;
a = 10;
b = 2;

#100

sign_a = 0;
sign_b = 1;
a = 07;
b = 06;

#100
sign_a = 1;
sign_b = 0;
a = 1;
b = 2;

#100
sign_a = 1;
sign_b = 1;
a = 9;
b = 5;

#100
sign_a = 1;
sign_b = 1;
a = 8;
b = 1;

#100
sign_a = 1;
sign_b = 1;
a = 0;
b = 9;

#100
sign_a = 0;
sign_b = 0;
a = 5;
b = 5;



end
endmodule
