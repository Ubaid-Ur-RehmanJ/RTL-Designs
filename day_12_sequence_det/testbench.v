`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 11:18:12 PM
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
//1110_1101_1011 sequence

module testbench(

    );
    reg clk, reset, x_i;
    wire det_o;
    
    day_12_sequence_detector uut (.clk(clk), .reset(reset), .x_i(x_i), .det_o(det_o));
    
    initial
    begin
    clk = 1'b0;
    reset = 1'b1;
    #15 reset = 1'b0;
    //reset = 1'b0;
    end
    
    always #5 clk = ~clk;
    initial
    begin
    #12 x_i = 0; #10 x_i = 1; #10 x_i = 1; #10 x_i = 1; #10 x_i = 1;
    #10 x_i = 0; #10 x_i = 1; #10 x_i = 0; #10 x_i = 1; #10 x_i = 1;
    #10 x_i = 1; #10 x_i = 0; #10 x_i = 1; #10 x_i = 1; #10 x_i = 0;
    #10 x_i = 1; #10 x_i = 1; #10 x_i = 0; #10 x_i = 1; #10 x_i = 1;
    #10 x_i = 1;
    end
endmodule
