`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2023 12:31:48 PM
// Design Name: 
// Module Name: alu_8_bit
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


module alu_8_bit(
input wire [7:0] a_i, b_i,
input wire [2:0] op_i,
output reg [7:0] alu_o
    );
    
    reg [7:0] SLL = {b_i[2:0], a_i[4:0]};
    
    
    always @(*)
    begin
    case(op_i)
    3'b000 : alu_o <= a_i + b_i;
    3'b001 : alu_o <= a_i - b_i;
    3'b010 : alu_o <= {a_i[4:0], b_i[2:0]};
    3'b011 : alu_o <= {b_i[2:0], a_i[4:0]};
    3'b100 : alu_o <= a_i & b_i;
    3'b101 : alu_o <= a_i | b_i;
    3'b110 : alu_o <= a_i ^ b_i;
    3'b111 : alu_o <= a_i == b_i;
    default : alu_o <= 0;
    endcase
    end
endmodule
