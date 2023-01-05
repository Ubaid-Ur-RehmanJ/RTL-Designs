`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2023 12:10:02 PM
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
    reg clk, reset, a_i;
    wire rising_edge, falling_edge;
    
    edge_detector_day3 uut (.clk(clk), .reset(reset), .a_i(a_i), 
    .rising_edge(rising_edge), .falling_edge(falling_edge));
    integer i;
    // clk
      always begin
        clk = 1'b1;
        #5;
        clk = 1'b0;
        #5;
      end
    
      // Stimulus
      initial begin
        reset <= 1'b1;
        a_i <= 1'b1;
        @(posedge clk);
        reset <= 1'b0;
        @(posedge clk);
        
        for (i=0; i<32; i = i+1) begin
          a_i <= $random%2;
          @(posedge clk);
        end
        $finish();
      end
endmodule
