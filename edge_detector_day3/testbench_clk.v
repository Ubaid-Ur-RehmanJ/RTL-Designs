`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2023 12:33:21 PM
// Design Name: 
// Module Name: testbench_clk
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


module testbench_clk(

    );
    reg clk, reset;
    wire rising_edge, falling_edge;
    
    edge_detector_clk uut (.clk(clk), .reset(reset), .rising_edge(rising_edge),
    .falling_edge(falling_edge));
    
    //clk
    always begin
        clk = 1'b1;
        #15;
        clk = 1'b0;
        #15;
      end
      
    initial
    begin
    reset <= 0;
    #20
    reset <= 1;
    #20
    reset <= 0;
    end
endmodule
