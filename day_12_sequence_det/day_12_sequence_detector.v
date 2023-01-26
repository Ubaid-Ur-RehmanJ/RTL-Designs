`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 10:54:11 PM
// Design Name: 
// Module Name: day_12_sequence_detector
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


module day_12_sequence_detector(
input wire clk, reset, x_i,
output det_o
    );
    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4, S5 = 5, S6=6,
              S7 = 7, S8 = 8, S9 = 9, S10 = 10, S11 = 11;
              
    reg [3:0] PS, NS;
    
    assign det_o = PS == S11 ? 1 : 0;
    always @(posedge clk)
    begin
    if (reset)
    PS <= S0;
    else
    PS <= NS;
    end
    
    always @(PS, x_i)
    begin
    case (PS)
    S0 : 
    begin
    //det_o <= x_i ? 0 : 0;
    NS <= x_i ? S1 : S0;
    end
    
    S1 : 
    begin
    //det_o <= x_i ? 0 : 0;
    NS <= x_i ? S2 : S0;
    end
    
    S2 : 
    begin
    //det_o <= x_i ? 0 : 0;
    NS <= x_i ? S3 : S0;
    end
    
    S3 : 
    begin
    //det_o <= x_i ? 0 : 0;
    NS <= x_i ? S3 : S4;  //S3 = PS
    end
    
    S4 : 
    begin
    //det_o <= x_i ? 0 : 0;
    NS <= x_i ? S5 : S0;
    end
    
    S5 : 
    begin
    //det_o <= x_i ? 0 : 0;
    NS <= x_i ? S6 : S0;
    end
    
    S6 : 
    begin
    //det_o <= x_i ? 0 : 0;
    NS <= x_i ? S3 : S7;
    end
    
    S7 : 
    begin
    //det_o <= x_i ? 0 : 0;
    NS <= x_i ? S8 : S0;
    end
    
    S8 : 
    begin
    //det_o <= x_i ? 0 : 0;
    NS <= x_i ? S9 : S0;
    end
    
    S9 : 
    begin
    //det_o <= x_i ? 0 : 0;
    NS <= x_i ? S3 : S10;
    end
    
    S10 : 
    begin
    //det_o <= x_i ? 0 : 0;
    NS <= x_i ? S11 : S0;
    end
    
    S11 : 
    begin
    //det_o <= x_i ? 1 : 0;
    NS <= x_i ? S2 : S0;
    end
    
    default :
    begin
    //det_o <= x_i ? 0 : 0;
    NS <= x_i ? S0 : S0;
    end
    
    endcase
    end
endmodule
