`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2022 09:10:52 PM
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


module testbench(

    );
    reg [3:0]A, B;
    wire [7:0]P;
    
    mul4bit uut(.a(A), .b(B), .p(P));
    
    initial
    begin
    A = 5;
    B = 6;
    #50
    
    A=3;
    B=0;
    #50
    
    A=12;
    B=14;
    #50
    
    A=11;
    B=9;
    #50
    
    A=9;
    B=9;
    #50
    
    A=0;
    B=0;
    end
   
    
endmodule
