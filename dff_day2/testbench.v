`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 08:39:07 PM
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
    reg clk, rst, d_i;
    wire q_norst_o, q_syncrst_o, q_asyncrst_o;
    
    dff_day2 uut (.clk(clk), .rst(rst), .d_i(d_i), .q_norst_o(q_norst_o),
     .q_syncrst_o(q_syncrst_o), .q_asyncrst_o(q_asyncrst_o));
     
    always begin
         clk = 1'b1;
         #5;
         clk = 1'b0;
         #5;
       end
     
       // Stimulus
       initial begin
         rst = 1'b1;
         d_i = 1'b0;
         @(posedge clk);
         rst = 1'b0;
         @(posedge clk);
         d_i = 1'b1;
         @(posedge clk);
         @(posedge clk);
         @(negedge clk);
         rst = 1'b1;
         @(posedge clk);
         @(posedge clk);
         rst = 1'b0;
         @(posedge clk);
         @(posedge clk);
         $finish();
       end
endmodule
