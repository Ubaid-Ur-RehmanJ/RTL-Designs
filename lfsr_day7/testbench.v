`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2023 01:54:17 AM
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
    reg clk, reset;
    reg [3:0] lfsr_i;
    wire [3:0] lfsr_o;
    
    lfsr_day7 uut (.clk(clk), .reset(reset), .lfsr_i(lfsr_i), .lfsr_o(lfsr_o));
    integer i, j;
    always begin
        clk = 1'b1;
        #10;
        clk = 1'b0;
        #10;
      end
    
      initial begin
        reset <= 1'b1;
        @(posedge clk);
        reset <= 1'b0;
        @(posedge clk);
        
        for (i=0; i<32; i = i + 1) begin
              lfsr_i <= $urandom_range(0, 8'hFF); //$random%2;
              @(posedge clk);
            end
        $finish();
     
//        for (i=0; i<32; i = i+1)
//          @(posedge clk);
//        $finish();


      end
      
endmodule
















//for (j =0; j<3; j = j + 1) begin
//              for (i =0; i<7; i = i + 1) begin
//                a_i = $urandom_range(0, 8'hFF);
//                b_i = $urandom_range(0, 8'hFF);
               
//                #5;
//              end
//            end
//          end
