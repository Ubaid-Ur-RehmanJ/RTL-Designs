`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2020 12:24:12 AM
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
  wire s,co;
  reg A,B,Cin;
  fulladder f2(s,co,A,B,Cin);
initial
  begin
   A=1'b0; B=1'b0; Cin=1'b0;
   #100;
   A=1'b0; B=1'b1; Cin=1'b0;
   #100;
   A=1'b1; B=1'b0; Cin=1'b0;
   #100;
   A=1'b1; B=1'b1; Cin=1'b0;
   
  end
endmodule
  
