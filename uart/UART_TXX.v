`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2023 11:32:43 AM
// Design Name: 
// Module Name: UART_TXX
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


module UART_TXX(input wire RST, Clk, Data_Send, Data_Ready,
input [7:0]Data_In,
output Serial_Out, UBusy
);
wire WCFlag,WLd_DReg,WLd_TxReg,WShift_TxReg,WBussy;
wire WRST_Counter,WRST_TxReg,WRST_DReg,WBClk;

//BaudClockController B1(.Clk(Clk),.BaudClk(WBClk));
CU_UART C1(.Data_Ready(Data_Ready),.Data_Send(Data_Send),.Clk(Clk),.CFlag(WCFlag),.Rst(RST),
.Shift_TxReg(WShift_TxReg),.LD_TxReg(WLd_TxReg),.LD_DReg(WLd_DReg),.UBusy(WBussy),.Rst_Counter(WRST_Counter),.Rst_TxReg(WRST_TxReg),.Rst_DReg(WRST_DReg));
DP_UART D1(.RST_Counter(WRST_Counter),.RST_TxReg(WRST_TxReg),.RST_DReg(WRST_DReg),
.UBusy_In(WBussy),.UBusy_Out(UBusy),.CFlag(WCFlag),.Data_In(Data_In),.LD_TxReg(WLd_TxReg),
.Shift_TxReg(WShift_TxReg),.LD_DReg(WLd_DReg),.Shift_Out(Serial_Out),.Clk(Clk));
endmodule



module DP_UART(input wire Clk, RST_Counter, RST_TxReg, RST_DReg, UBusy_In, LD_TxReg, Shift_TxReg, LD_DReg,
input wire [7:0] Data_In,
output Shift_Out, output UBusy_Out, CFlag);
assign UBusy_Out=UBusy_In;
wire WParity;
wire [7:0] WData;
ParityGenerator P1(.POut(WParity),.PEnable(LD_TxReg),.Pin(WData));
Counter C1(.CFlag(CFlag),.Enable(Shift_TxReg),.Clk(Clk),.Rst(RST_Counter));
Data_Reg D1(.Data_In(Data_In),.Ld_DReg(LD_DReg),.Data_Out(WData),.Rst(RST_DReg));
TX_Reg T1(.Serial_Out(Shift_Out),.LD_TXReg(LD_TxReg),.Shift_TXReg(Shift_TxReg),.Data_In(WData)
,.Clk(Clk),.RST(RST_TxReg),.Pin(WParity));
endmodule


module CU_UART(input wire Clk, Rst, CFlag, Data_Send, Data_Ready,
output reg Rst_TxReg, Rst_Counter,Rst_DReg, UBusy,LD_DReg,LD_TxReg,Shift_TxReg);

parameter [2:0] S_Rst=000,S_Waiting=001,S_DataLd=010,S_PreTx=100,S_Tx=101,S_PostTx=110;
reg [2:0] State_Reg;
always@(posedge Clk or negedge Rst)
if(Rst==0)
 State_Reg<=S_Rst;
else
case(State_Reg)
S_Rst:
 State_Reg<=S_Waiting;//Reset State
S_Waiting:
begin
 if(Data_Ready==1)
 State_Reg<=S_DataLd;
 else
 begin
 if(Data_Send==1)
 State_Reg<=S_PreTx;
 else
 State_Reg<=S_Waiting;
 end
end
S_DataLd: 
 State_Reg<=S_Waiting;
 
S_PreTx: 
 State_Reg<=S_Tx;
S_Tx:
begin
 if(CFlag==1)
 State_Reg<=S_PostTx;
 else
 State_Reg<=S_Tx;
end
S_PostTx: 
 State_Reg<=S_Waiting;

default:
 State_Reg<=S_Rst;
endcase

always@(State_Reg)
case(State_Reg)
S_Rst:
begin
 Rst_Counter<=1'b1;
 Rst_TxReg<=1'b1;
 Rst_DReg<=1'b1;
end
S_Waiting:
begin
 Rst_Counter<=1'b0;
 Rst_TxReg<=1'b0;
 Rst_DReg<=1'b0;
 LD_DReg<=1'b0;
end
S_DataLd:
begin
 LD_DReg<=1'b1;
end
S_PreTx:
begin
 UBusy<=1'b1;
 LD_TxReg<=1'b1;
end
S_Tx:
begin
 LD_TxReg<=1'b0;
 Shift_TxReg<=1'b1;
end
S_PostTx:
begin
 Shift_TxReg<=1'b0;
 UBusy<=1'b0;
 Rst_Counter<=1'b1;
 Rst_TxReg<=1'b1;
end
endcase

endmodule


///lower modules/////////////


module ParityGenerator(input PEnable,input [7:0] Pin, output POut);
 assign POut= PEnable?(Pin[0]^Pin[1]^Pin[2]^Pin[3]^Pin[4]^Pin[5]^Pin[6]^Pin[7]):1'b0;
endmodule


module Counter(input Enable, Clk, Rst, output reg CFlag);
reg[3:0]Count_Reg;
always@(posedge Clk or posedge Rst)
if(Rst==1)
 begin
 Count_Reg<=0;
 CFlag<=1'b0;
 end
else
 if(Enable==1) //if Enable is one
 if(Count_Reg==4'd9) //if Counter Completes Cycle of 10 Counts
 begin
 Count_Reg<=4'd0;
CFlag<=1'b1;
 end
 else //if Counter is Still Counting Cycle of 10 Counts
 begin
 CFlag<=1'b0;
 Count_Reg<=Count_Reg+1;
 end
 else ////if Enable is zero
 begin
 Count_Reg<=0;
 CFlag<=1'b0;
 end
endmodule

module Data_Reg(input Rst, input [7:0] Data_In,input Ld_DReg,output [7:0] Data_Out);
reg [7:0]DReg;
assign Data_Out=DReg;
always@(Data_In or Ld_DReg or Rst)
if(Rst==1)
 DReg<=8'b0000_0000;
else
if(Ld_DReg==1)
 DReg<=Data_In;
else
 DReg<=DReg;
endmodule

module TX_Reg(input LD_TXReg, Shift_TXReg, Clk, RST, Pin,  input [7:0] Data_In, output Serial_Out);
reg [9:0]SReg;
assign Serial_Out=SReg[0];
always@(posedge Clk or posedge RST)
 if(RST==1)//////Make all Bits 1 at Reset
 SReg<=10'd1023;
 else
 if(LD_TXReg==1)///if Load TX is 1
 SReg<={Pin,Data_In,1'b0};
 else if(Shift_TXReg==1)//if Shifting is 1
 begin
 SReg<=SReg>>1;
 SReg[9]<=1'b1;
 end
 else //Other wise retain Register Value
 SReg<=SReg;
endmodule

