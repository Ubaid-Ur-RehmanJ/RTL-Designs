`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 05:13:06 PM
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


module testbench();
reg [31:0] a_i, b_i;
reg sel_i;
wire [31:0] y;

mux_day1 uut (.a_i(a_i), .b_i(b_i), .sel_i(sel_i), .y(y));

initial 
begin
a_i = 32'h0110;
b_i = 32'h0011;
sel_i = 0;
#100
a_i = 32'h0101;
b_i = 32'h0001;
sel_i = 1;
#100
a_i = 32'h1100;
b_i = 32'h1010;
sel_i = 1;
#100
a_i = 32'h1011;
b_i = 32'h1011;
sel_i = 0;
#100
a_i = 32'h0000;
b_i = 32'h1111;
sel_i = 0;
#100
a_i = 32'h0000;
b_i = 32'h1111;
sel_i = 1;
#100 $finish;
end
endmodule
