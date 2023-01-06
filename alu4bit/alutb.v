`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2022 01:35:22 AM
// Design Name: 
// Module Name: alutb
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


module alutb(

    );
    reg [3:0] in_a, in_b;
    reg [3:0] opcode;
    wire [4:0] alu_out;
    wire a_in_zero;
    
    alu4bit uut(.in_a(in_a), .in_b(in_b), .opcode(opcode), .a_in_zero(a_in_zero),
                .alu_out(alu_out));
                
    initial
    begin 
    opcode=1;
    in_a=7; in_b=15;
    #100
    opcode=2;
    in_a=7; in_b=15; 
                 
    #100
    opcode=3;
    in_a = 12; in_b=15;
                 
    #100
    opcode=4;
    in_a=7; in_b=0;
    
    
    #100
    opcode = 5;
    in_a = 4'b0001; in_b = 4'b0011;
    
    #100
    opcode = 6;
    in_a = 4'b0111; in_b = 4'b0011;
    
    #100
    opcode = 7;
    in_a = 4'b0111; in_b = 4'b0011;
    
    
    #100
    opcode = 8;
    in_a = 4'b0111; in_b = 4'b0011;
    
    #100
    opcode = 9;
    in_a = 4'b0111; in_b = 4'b0011;
   
    #100
    opcode = 10;
    in_a = 4'b0111; in_b = 4'b0011;
    
    end
    
endmodule
