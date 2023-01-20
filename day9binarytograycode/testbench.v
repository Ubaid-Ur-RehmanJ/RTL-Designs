`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2023 11:40:09 PM
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
    reg [3:0] bin_i;
    wire [3:0] gray_o;
    
    day_9_binary_to_grayccode uut (.bin_i(bin_i), .gray_o(gray_o));
    
    initial
    begin
    bin_i = 4'b0000;
    #100
    
    bin_i = 4'b0001;
    #100
    
    bin_i = 4'b0010;
    #100
    
    bin_i = 4'b0011;
    #100
    
    bin_i = 4'b0100;
    #100
    
    bin_i = 4'b0101;
    #100
    
    bin_i = 4'b0110;
    #100
    
    bin_i = 4'b0111;
    #100
    
    bin_i = 4'b1000;
    #100
    
    bin_i = 4'b1001;
    #100
        
    bin_i = 4'b1010;
    #100
            
    bin_i = 4'b1011;
    #100
    
    bin_i = 4'b1100;
    #100
    
    bin_i = 4'b1101;
    #100
        
    bin_i = 4'b1110;
    #100
    
    bin_i = 4'b1111;
    //#100 $finish;
  
    end
endmodule
