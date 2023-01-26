`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2023 11:05:46 AM
// Design Name: 
// Module Name: day_13_mux_2_1
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


module day_13_mux_2_1(
input     wire[3:0] x_i,
input     wire[3:0] sel_i,

// Output using ternary operator
output reg y_ter_o,
// Output using case
output    reg     y_case_o,
// Ouput using if-else
output    reg     y_ifelse_o,
// Output using for loop
output    reg     y_loop_o,
// Output using and-or tree
output    wire     y_aor_o
    );
    integer i;
    //Output using ternary operator
    always @(*)
    begin
    y_ter_o <= sel_i[0] ? x_i[0] :
              sel_i[1] ? x_i[1] :
              sel_i[2] ? x_i[2] : x_i[3];
              //sel_i[3] ? x_i[3]
              
    end
    
    // Output using case
//    always @(*)
//    begin
//    case (sel_i)
//    4'b0001 : y_case_o <= x_i[0];
//    4'b0010 : y_case_o <= x_i[1];
//    4'b0100 : y_case_o <= x_i[2];
//    4'b1000 : y_case_o <= x_i[3];
//    endcase
    
//    end
    
//    // Ouput using if-else
//    //output    reg     y_ifelse_o,
//    always @(*)
//    begin
//    if (sel_i[0])
//    y_ifelse_o <= x_i[0];
    
//    else if (sel_i[1])
//    y_ifelse_o <= x_i[1];
    
//    if (sel_i[2])
//    y_ifelse_o <= x_i[2];
        
//    //if (sel_i[0])
//    else
//    y_ifelse_o <= x_i[0];
//    end
    
//    // Using for loop
//      always @(*) begin
//        //y_loop_o <= '0;
//        for (i=0; i<4; i = i + 1) begin
//          y_loop_o <= (sel_i[i] & x_i[i]) | y_loop_o;
//        end
//      end
    
//      // Using and-or tree
//      assign y_aor_o = (sel_i[0] & x_i[0]) |
//                       (sel_i[1] & x_i[1]) |
//                       (sel_i[2] & x_i[2]) |
//                       (sel_i[3] & x_i[3]);

    
endmodule
