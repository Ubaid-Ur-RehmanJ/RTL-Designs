`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2022 04:37:51 PM
// Design Name: 
// Module Name: mid_18_2
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


module mid_18_2
#(parameter W=8, N=8)
(
input wire load, clk, shft_left, shft_right,
input wire [W-1:0] a, b,
output wire y
);
wire write;
wire op_a;
wire [W-1:0] op_b;
reg [W-1:0] op_reg;
reg [W-1:0] shft_reg_left, shft_reg_right;
wire [W-1:0] adder;
reg [W-1:0] op_c;

always @(posedge clk)
begin
if (load)
begin
shft_reg_right <= a;
shft_reg_left <= b;
end
else if (shft_right)
shft_reg_right <= {1'b0, shft_reg_right[W-1:1]};
else if (shft_left)
shft_reg_left <= {shft_reg_left[W-2:0], 1'b0};
end

assign op_a = shft_reg_right[0];
assign op_b = shft_reg_left;

assign write = (op_a == 1'b1); 

//alternative for 3rd reg
//always @(posedge clk)
//begin
//if (write)
//op_c <= adder;
//end

//assign adder = op_reg + op_b;
//assign op_reg = adder;
//assign y = op_reg;

// alternative for 3rd register
always @(posedge clk)
begin
if (write)
op_reg <= op_reg + op_b;
end

assign y = op_reg;


endmodule




