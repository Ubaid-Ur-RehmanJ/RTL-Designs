`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2022 06:26:58 PM
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


module alutb(

    );
    reg [31:0] in_a, in_b;
    reg in_c;
    reg [1:0] ctrl;
    wire [31:0] alu_out;
    wire c_out;
    
    alu32bit uut(.in_a(in_a), .in_b(in_b), .in_c(in_c), .ctrl(ctrl), .c_out(c_out),
                .alu_out(alu_out));
                
    initial
    begin 
    ctrl=0;
    //in_a=7; in_b=15; in_c=0;
    in_a = 4'h0011; in_b=4'h0010; in_c = 0;
    #100
    
    ctrl=1;
    //in_a=7; in_b=15; in_c=1;
    in_a = 4'h0101; in_b=4'h0110; in_c = 1;
                 
    #100
    ctrl=2;
    in_a = 4'h0011; in_b=4'h0010; in_c = 0;
                 
    #100
    ctrl=3;
    //in_a=7; in_b=0; in_c=1;
    in_a = 4'h001; in_b=4'h000; in_c = 1;
    
    /**
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
    */
    end
    
endmodule
