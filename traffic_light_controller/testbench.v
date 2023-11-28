`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 07:44:18 PM
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


// Code your testbench here
// or browse Examples
module testbench;

  // Inputs
  reg clk;
  reg rst;
  reg main_road_traffic;
  reg side_road_traffic;

  // Outputs
  wire main_road_green_light;
  //wire main_road_yellow_light;
  wire main_road_red_light;
  //wire side_road_green_light;
  //wire side_road_yellow_light;
  wire side_road_red_light;

  // Instantiate the module to be tested
  project_tlc dut (
    .clk(clk),
    .rst(rst),
    .main_road_traffic(main_road_traffic),
    .side_road_traffic(side_road_traffic),
    .main_road_green_light(main_road_green_light),
    
    .main_road_red_light(main_road_red_light),
    
   
    .side_road_red_light(side_road_red_light)
  );

  // Clock generation
  always #5 clk = ~clk;

  initial 
    begin
    // Initialize inputs
      clk = 0;
      rst = 1;
      main_road_traffic = 0;
      side_road_traffic = 0;

      #10 

      rst = 0;
      main_road_traffic = 1;
      side_road_traffic = 0;
      #50;


      main_road_traffic = 0;
      side_road_traffic = 1;
      #50;


      main_road_traffic = 1;
      side_road_traffic = 1;
      #50;


      main_road_traffic = 0;
      side_road_traffic = 0;
      #50;


      $finish;

    
  end
  
    
  
//for wave dump
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #500
      $finish;
    end
  

endmodule