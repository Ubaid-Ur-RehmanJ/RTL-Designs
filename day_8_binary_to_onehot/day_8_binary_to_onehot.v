`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2023 08:50:08 PM
// Design Name: 
// Module Name: day_8_binary_to_onehot
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


module day_8_binary_to_onehot
#(
  parameter BIN_W       = 4,
  parameter ONE_HOT_W   = 16
)(
  input   wire [BIN_W-1:0] bin_i,    
  output  reg [ONE_HOT_W-1:0] one_hot_o 
);
always @(*) begin
case (bin_i)
4'b0000: one_hot_o <= 16'b0000000000000001;
4'b0001: one_hot_o <= 16'b0000000000000010;
4'b0010: one_hot_o <= 16'b0000000000000100;
4'b0011: one_hot_o <= 16'b0000000000001000;
4'b0100: one_hot_o <= 16'b0000000000010000;
4'b0101: one_hot_o <= 16'b0000000000100000;
4'b0110: one_hot_o <= 16'b0000000001000000;
4'b0111: one_hot_o <= 16'b0000000010000000;
4'b1000: one_hot_o <= 16'b0000000100000000;
4'b1001: one_hot_o <= 16'b0000001000000000;
4'b1010: one_hot_o <= 16'b0000010000000000;
4'b1011: one_hot_o <= 16'b0000100000000000;
4'b1100: one_hot_o <= 16'b0001000000000000;
4'b1101: one_hot_o <= 16'b0010000000000000;
4'b1110: one_hot_o <= 16'b0100000000000000;
4'b1111: one_hot_o <= 16'b1000000000000000;
default : one_hot_o <= 16'b0000000000000000;
endcase
end
endmodule
