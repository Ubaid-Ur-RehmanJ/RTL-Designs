`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2020 12:22:51 AM
// Design Name: 
// Module Name: fulladder
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


module halfadder(S,C,A,B);
  output S,C;
  input A,B;
    xor (S,A,B);
    and (C,A,B);
endmodule

module fulladder(sum,cout,a,b,cin);
  input a,b,cin;
  output sum,cout;
  wire w1,w2,w3;

  halfadder h1(w1,w2,a,b);
  halfadder h2(sum,w3,w1,cin);
  or(cout,w2,w3);

endmodule
