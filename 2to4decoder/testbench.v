`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2020 09:47:37 AM
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
  wire A0,A1,A2,A3;
  reg E,I0,I1;

decoder2to4 d(A0,A1,A2,A3,E,I0,I1);

initial 
begin
 E=0; I0=0; I1=0;
 #100;
 E=1; I0=1; I1=0;
 #100;
 E=1; I0=0; I1=1;
 #100;
 E=0; I0=1; I1=1;

end
endmodule
 
