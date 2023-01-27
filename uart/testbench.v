`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2023 11:33:18 AM
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


module testbench();
reg RST,Clk,Data_Send,Data_Ready;
reg [7:0]Data_In;
wire Serial_Out,UBusy;
//wire SReg,DReg,State_Reg,Count_Reg,CFlag;
wire [9:0] SReg;
wire  [7:0] DReg;
wire [3:0] Count_Reg;
wire [2:0] State_Reg;
assign SReg=uut.D1.T1.SReg;
assign State_Reg=uut.C1.State_Reg;
assign DReg=uut.D1.D1.DReg;
assign Count_Reg=uut.D1.C1.Count_Reg;

UART_TXX uut(.Data_In(Data_In),.RST(RST), .Clk(Clk), .Data_Send(Data_Send), .Data_Ready(Data_Ready), .Serial_Out(Serial_Out), .UBusy(UBusy));

initial
        begin
        Clk = 1'b0;
        RST = 1'b1;
        #15 RST = 1'b0;
        #15 RST = 1'b1;
        end
        
        always #15 Clk = ~Clk;
        
    initial
        begin
        Data_In=8'b1101_1011;
        Data_Send = 0;
        Data_Ready = 0;
        #60
        Data_Send = 0;
        Data_Ready = 1;
        #90
        Data_Send = 1;
        Data_Ready = 0;
        
        
        
        
        
        
        
        end
//always
//begin
//Clk=0;
//#10;
//Clk=1;
//#10;
//end

//initial
//begin

// Data_In=8'b1101_1011;

//RST=0;
//#10;
//RST=1;
//Data_Send=0;
//Data_Ready=1;
//#20;
//Data_Send=1;
//Data_Ready=0;
//end

endmodule
