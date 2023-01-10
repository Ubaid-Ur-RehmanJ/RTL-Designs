`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2023 01:17:22 AM
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
    reg clk = 0, reset, shft;
    reg [3:0] x_i;
    wire [3:0] shft_left, shft_right;
    
    shft_reg_day6 uut (.clk(clk), .reset(reset), .shft(shft), .x_i(x_i), .shft_left(shft_left),
                       .shft_right(shft_right));
                       
    
    always #20
    clk = ~clk;
    
    initial
    begin
    reset = 0; shft = 0; x_i = 4'b1010;
    #20
    
    reset = 0; shft = 1; x_i = 4'b0110;
    #20
    
    reset = 1; shft = 0; x_i = 4'b0010;
    #20
    
    reset = 1; shft = 1; x_i = 4'b1010;
    #20
    
    reset = 0; shft = 1; x_i = 4'b1010;
    #20
    
    reset = 0; shft = 0; x_i = 4'b1010;
    #20
    
    reset = 0; shft = 1; x_i = 4'b1111;
    #20
    
    reset = 0; shft = 0; x_i = 4'b1100;
    
    #20 $finish;
    
    
    end
endmodule
