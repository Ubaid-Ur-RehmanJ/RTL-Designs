`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2023 11:22:10 AM
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
    reg [3:0] x_i, sel_i;
    wire y_ter_o, y_case_o, y_ifelse_o, y_loop_o, y_aor_o;
    day_13_mux_2_1 uut (.x_i(x_i), .sel_i(sel_i), .y_ifelse_o(y_ifelse_o),
                       .y_loop_o(y_loop_o), .y_aor_o(y_aor_o));
                       
   integer i;                    
   // Stimulus
   initial begin
     for (i =0; i<32; i= i + 1) begin
        x_i   = $urandom_range(0, 4'hF);
        sel_i = 1'b1 << $urandom_range(0, 2'h3); // one-hot
        #5;
     end
     $finish();
   end
endmodule
