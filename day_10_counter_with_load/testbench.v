`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2023 09:53:43 PM
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
    
    reg clk = 0, load, reset, load_val_i;
    wire count_o;
    
    day_10_counter_with_load_case uut (.clk(clk), .load(load), .reset(reset),
                             .load_val_i(load_val_i), .count_o(count_o));
                             
    always
    #50 clk = ~clk;
    
    initial
    begin
    reset = 0;
    load = 0;
    load_val_i = 4'b0110;
    #50
    
    reset = 0;
    load = 1;
    load_val_i = 4'b1111;
    #50
    
    reset = 1;
    load = 1;
    load_val_i = 4'b1010;
    #50
    
    reset = 1;
    load = 1;
    load_val_i = 4'b1010;
    #50
    
    reset = 0;
    load = 1;
    load_val_i = 4'b0111;
    #50
    
    reset = 0;
    load = 1;
    load_val_i = 4'b0111;
    #50
    
    reset = 0;
    load = 1;
    load_val_i = 4'b0111;
    #50
    
    reset = 0;
    load = 0;
    load_val_i = 4'b1010;
    #50
    
    reset = 0;
    load = 0;
    load_val_i = 4'b1111;
    
    #50
    
    reset = 0;
    load = 0;
    load_val_i = 4'b0011;
    end
endmodule
