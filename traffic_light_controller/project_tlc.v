`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 07:43:35 PM
// Design Name: 
// Module Name: project_tlc
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

module project_tlc
  (
    input wire clk, rst, 
    input wire main_road_traffic, side_road_traffic,
    output reg main_road_green_light,
    output reg main_road_yellow_light,
    output reg main_road_red_light,
    output reg side_road_green_light,
    output reg side_road_yellow_light,
    output reg side_road_red_light
  );
  
  parameter main_road_red = 0,
            main_road_yellow = 1, main_road_green = 2,
            side_road_red = 3, side_road_yellow = 4,
            side_road_green = 5;
  
  reg [2:0] PS, NS; //PS - Present State, NS - Next State
  reg [2:0] counter = 0;

  
  always @(posedge clk)
    begin
      if(rst)
        begin
          PS <= 0;
          counter = 0;
        end
      else
        PS <= NS;
    end
  
  always @(*)
    begin
      case(PS)

        
        main_road_red : begin
          if (counter < 5)
            begin
              NS = main_road_red;
              counter = counter + 1;
            end
          else
            begin
              NS = main_road_yellow;
              counter = 0;
            end
        end
        
        
        
        
        main_road_yellow : begin
          if (counter < 5)
            begin
              NS = main_road_yellow;
              counter = counter + 1;
            end
          else
            begin
              NS = main_road_green;
              counter = 0;
            end
        end
        
        
        
        main_road_green : begin
          if (counter < 5)
            begin
              NS = main_road_green;
              counter = counter + 1;
            end
          else
            begin
              NS = side_road_red;
              counter = 0;
            end
        end

        
 

        
        side_road_red : begin
          if (counter < 5)
            begin
              NS = side_road_red;
              counter = counter + 1;
            end
          else
            begin
              NS = side_road_yellow;
              counter = 0;
            end
        end
        
        

        
        side_road_yellow : begin
          if (counter < 5)
            begin
              NS = side_road_yellow;
              counter = counter + 1;
            end
          else
            begin
              NS = side_road_green;
              counter = 0;
            end
        end
        
        
        
        side_road_green : begin
          if (counter < 5)
            begin
              NS = side_road_green;
              counter = counter + 1;
            end
          else
            begin
              NS = main_road_red;
              counter = 0;
            end
        end

        
        default : begin
          if (counter < 5)
            begin
              NS = main_road_green;
              counter = counter + 1;
            end
          else
            begin
              NS = main_road_red;
              counter = 0;
            end
        end
        
      endcase
    end
  
  
  always @(*)
    begin
      if (main_road_traffic)
        begin
          side_road_red_light = 1;
        end
      else if (side_road_traffic)
        begin
          main_road_red_light = 1;
        end
      else
        begin
          main_road_green_light = 1;
        end
    end
  
endmodule
      

