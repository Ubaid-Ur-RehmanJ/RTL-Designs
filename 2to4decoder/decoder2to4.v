`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2020 09:46:50 AM
// Design Name: 
// Module Name: decoder2to4
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


module decoder2to4 (a0,a1,a2,a3,e,i0,i1);
output a0,a1,a2,a3;
input e,i0,i1;

assign a0 = (e & i0 & i1);
assign a1 = (e & i0 & ~i1);
assign a2 = (e & ~i0 & i1);
assign a3 = (e & ~i0 & ~i1);

endmodule
