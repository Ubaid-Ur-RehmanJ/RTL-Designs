`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2022 09:09:16 PM
// Design Name: 
// Module Name: mul4bit
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


module mul4bit(a, b, p

    );
    input [3:0] a,b;
    wire [7:0]m0,m1,m2,m3; // 7 bit middle terms
    wire [7:0]s1,s2,s3;
    output [7:0]p;
    assign m0 = {4{a[0]}} & b[3:0];
    assign m1 = {4{a[1]}} & b[3:0];
    assign m2 = {4{a[2]}} & b[3:0];
    assign m3 = {4{a[3]}} & b[3:0];
    assign s1= m0 + (m1<<1);
    assign s2= s1 + (m2<<2); 
    assign s3= s2 + (m3<<3);
    assign p=s3;
    
endmodule

