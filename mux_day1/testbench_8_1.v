`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 05:57:46 PM
// Design Name: 
// Module Name: testbench_8_1
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


module testbench_8_1(

    );
    reg [7:0] a_1, a_2, a_3, a_4, a_5, a_6, a_7, a_8;
    reg [2:0] sel;
    wire [7:0] y;
    
    mux_8_1 uut (.a_1(a_1), .a_2(a_2), .a_3(a_3), .a_4(a_4), .a_5(a_5), .a_6(a_6), .a_7(a_7), .a_8(a_8), .sel(sel), .y(y));
    integer i;
    initial begin
        for (i = 0; i < 10; i = i+1) 
        begin
          a_1   = $urandom_range (0, 8'hFF);
          a_2   = $urandom_range (0, 8'hFF);
          a_3   = $urandom_range (0, 8'hFF);
          a_4   = $urandom_range (0, 8'hFF);
          a_5   = $urandom_range (0, 8'hFF);
          a_6   = $urandom_range (0, 8'hFF);
          a_7   = $urandom_range (0, 8'hFF);
          a_8   = $urandom_range (0, 8'hFF);
          sel = $random%2;
          #5;
        end
      end
    
    
endmodule
