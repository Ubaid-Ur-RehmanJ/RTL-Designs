`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2022 01:04:56 PM
// Design Name: 
// Module Name: alu4bit
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


module alu4bit(in_a, in_b, opcode, alu_out, a_in_zero

    );
    input wire[3:0] in_a, in_b;
    input wire[3:0] opcode;
    output reg[4:0] alu_out;
    output reg a_in_zero;
    
    parameter ADD=3, SUB=4, AND=5, NAND = 6, OR = 7, NOR =8,XOR=9, XNOR=10;
    
    always @(*)
    begin
    
    if (opcode==ADD) begin
    alu_out = in_a + in_b;
    end
    
    else if (opcode==SUB) begin
    alu_out = in_a - in_b;
    end
    
    else if (opcode == AND) begin
    alu_out = in_a & in_b;
    end
    
    else if (opcode==NAND) begin
    alu_out = ~(in_a & in_b);
    end
    
    else if (opcode==OR) begin
    alu_out = in_a | in_b;
    end
        
    else if (opcode==NOR) begin
    alu_out = ~(in_a | in_b);
    end
    
    else if (opcode==XOR) begin
    alu_out = in_a ^ in_b;
    end
    
    else if (opcode==XNOR) begin
    alu_out = ~(in_a ^ in_b);
    end
    
    
   // else begin
    //alu_out = in_a;
    //end
    
    end
endmodule
