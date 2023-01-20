`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2023 09:45:45 PM
// Design Name: 
// Module Name: day_10_counter_with_load_case
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


module day_10_counter_with_load_case(
input wire clk, reset, load,
input wire [3:0] load_val_i,

output wire [3:0] count_o
    );
    reg [3:0] count; 
    always @(posedge clk)
    begin
    case ({reset, load, clk})
    3'b1?? : count <= 0;
    3'b011 : count <= load_val_i;
    3'b001 : count <= count + 1;
    endcase
    end
    
    assign count_o = count;
endmodule
