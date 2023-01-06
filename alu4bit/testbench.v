`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2022 01:05:24 PM
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


module alu_tb();

reg [3:0]in_a_tb,in_b_tb;
reg [2:0]opcode_tb;
wire [3:0]alu_out_tb;
wire a_in_zero_tb;

alu u1(.in_a(in_a_tb),.in_b(in_b_tb),.opcode(opcode_tb),.alu_out(alu_out_tb),.a_in_zero(a_in_zero_tb));

initial
begin
in_a_tb=4'b1010;
in_b_tb=4'b1000;
opcode_tb=4'b100;
#20
in_a_tb=4'b1010;
in_b_tb=4'b1000;
opcode_tb=4'b011;
#20
in_a_tb=4'b1010;
in_b_tb=4'b1000;
opcode_tb=4'b101;
#20
in_a_tb=4'b1010;
in_b_tb=4'b1000;
opcode_tb=4'b110;
#20
in_a_tb=4'b1010;
in_b_tb=4'b1000;
#20
$stop;
end
endmodule
