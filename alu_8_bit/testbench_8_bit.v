`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2023 12:58:04 PM
// Design Name: 
// Module Name: testbench_8_bit
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


module testbench_8_bit(

    );
    reg [7:0] a_i, b_i;
    reg [2:0] op_i;
    wire [7:0] alu_o;
    
    alu_8_bit uut (.a_i(a_i), .b_i(b_i), .op_i(op_i), .alu_o(alu_o));
    
    initial
    begin
    a_i = 7'b0010;
    b_i = 7'b1010;
    op_i = 0;
    #50
    
    a_i = 7'b0010;
    b_i = 7'b1010;
    op_i = 1;
    #50
    
    a_i = 7'b0010;
    b_i = 7'b1010;
    op_i = 2;
    #50
    
    a_i = 7'b0010;
    b_i = 7'b1010;
    op_i = 3;
    #50
        
    a_i = 7'b0010;
    b_i = 7'b1010;
    op_i = 4;
    #50
    
    a_i = 7'b0010;
    b_i = 7'b1011;
    op_i = 5;
    #50
    
    a_i = 7'b0110;
    b_i = 7'b1010;
    op_i = 6;
    #50
    
    a_i = 7'b0000;
    b_i = 7'b1010;
    op_i = 7;
    #50 $finish;
    end
//    integer j,i;
//    initial begin
////        for (j =0; j<3; j = j + 1) begin
////          for (i =0; i<7; i = i + 1) begin
////            a_i = $urandom_range(0, 8'hFF);
////            b_i = $urandom_range(0, 8'hFF);
////            op_i = 3'b(i);
////            #5;
//          end
      
//      end

endmodule
