`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2023 11:31:07 PM
// Design Name: 
// Module Name: day_9_binary_to_grayccode
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


module day_9_binary_to_grayccode
#(
  parameter VEC_W = 4
)(
  input     wire [VEC_W-1:0] bin_i,
  output    reg [VEC_W-1:0] gray_o

);
//useful for switching operations

always @(*) begin
case (bin_i)
4'b0000: gray_o <= 4'b0000;
4'b0001: gray_o <= 4'b0001;
4'b0010: gray_o <= 4'b0011;
4'b0011: gray_o <= 4'b0010;
4'b0100: gray_o <= 4'b0110;
4'b0101: gray_o <= 4'b0111;
4'b0110: gray_o <= 4'b0101;
4'b0111: gray_o <= 4'b0100;
4'b1000: gray_o <= 4'b1100;
4'b1001: gray_o <= 4'b1101;
4'b1010: gray_o <= 4'b1111;
4'b1011: gray_o <= 4'b1110;
4'b1100: gray_o <= 4'b1010;
4'b1101: gray_o <= 4'b1011;
4'b1110: gray_o <= 4'b1001;
4'b1111: gray_o <= 4'b1000;
default : gray_o = 0;
endcase
end

endmodule
