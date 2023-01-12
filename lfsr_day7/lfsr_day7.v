`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2023 01:48:16 AM
// Design Name: 
// Module Name: lfsr_day7
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
//Alternative code
module lfsr_day7(
input wire clk, reset,
input wire [3:0] lfsr_i,
output reg [3:0] lfsr_o
    );
//    reg [3:0] r_reg;
//    wire [3:0] r_next;
    
    always @(posedge clk)
    begin
    if (reset)
    begin
    //r_reg <= 0;
    lfsr_o <= 0;
    end
    else
    //r_reg <= r_next;
    lfsr_o <= {lfsr_i[2:0], lfsr_i[3] ^ lfsr_i[1]};
    end
    
    //assign r_next = {r_reg[2:0], r_reg[3] ^ r_reg[1]};
    //assign lfsr_o = r_reg;
endmodule


//module lfsr_day7(
//input wire clk, reset,
//output wire [3:0] lfsr_o
//    );
//    reg [3:0] r_reg;
//    wire [3:0] r_next;
    
//    always @(posedge clk)
//    begin
//    if (reset)
//    begin
//    r_reg <= 0;
//    end
//    else
//    r_reg <= r_next;
//    end
    
//    assign r_next = {r_reg[2:0], r_reg[3] ^ r_reg[1]};
//    assign lfsr_o = r_reg;
//endmodule


