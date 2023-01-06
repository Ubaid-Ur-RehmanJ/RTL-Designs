`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2022 06:26:40 PM
// Design Name: 
// Module Name: alu32bit
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


module alu32bit(in_a, in_b, in_c, ctrl, alu_out, c_out

    );
    input wire[31:0] in_a, in_b;
    input wire in_c;
    input wire[1:0] ctrl;
    output reg[31:0] alu_out;
    output reg c_out;
    
    parameter ADD=0, SUB=1, OR=2, AND = 3;
    
    always @(*)
    begin
    
    if (ctrl == ADD) begin
    {c_out, alu_out} = in_a + in_b + in_c;
    end
    
    else if (ctrl == SUB) begin
    {c_out, alu_out} = in_a - in_b - in_c;
    end
    
    else if (ctrl == OR) begin
    {c_out, alu_out} = in_a | in_b;
    end
    
    else if (ctrl == AND) begin
    {c_out, alu_out} = (in_a & in_b);
    end
    
    else begin
    alu_out = 0;
    c_out = 0;
    end
    
    /*
    //else if (opcode==OR) begin
    //alu_out = in_a | in_b;
    //end
        
    else if (opcode==NOR) begin
    alu_out = ~(in_a | in_b);
    end
    
    else if (opcode==XOR) begin
    alu_out = in_a ^ in_b;
    end
    
    else if (opcode==XNOR) begin
    alu_out = ~(in_a ^ in_b);
    end
    */
    
   // else begin
    //alu_out = in_a;
    //end
    
    end
endmodule

