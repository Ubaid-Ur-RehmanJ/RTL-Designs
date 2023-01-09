`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2023 03:55:12 PM
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
    reg clk = 0; reg reset;
    wire [7:0] cnt_o;
    
    odd_counter_day5 uut (.clk(clk), .reset(reset), .cnt_o(cnt_o));
    
//    reg clk = 0;
    always #50 clk = ~clk;
    initial
    begin
    reset = 1'b0;
    #20
    reset = 1'b1;
    #30
    reset = 1'b0;
    #50
    reset = 1'b1;
    #50
    reset = 1'b1;
    #50
    reset = 1'b0;
    
    #250 $finish;
    end
endmodule
