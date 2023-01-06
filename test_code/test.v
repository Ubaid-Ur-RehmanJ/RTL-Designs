`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2022 09:01:15 PM
// Design Name: 
// Module Name: test
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


//module test( out, a ,b

//    );
//    input wire [3:0] a, b;
//    output wire [4:0] out;
    
//    assign out = (a & b);
//endmodule

module test(input clk, output ctrl);



reg [3:0] counter = 0;
always@(posedge clk)
begin
if (counter < 16) counter <= counter + 1;
else counter <= 0;
end

assign ctrl = (counter == 7 || counter == 12) ? 1:0;

endmodule
