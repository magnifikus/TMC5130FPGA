`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:20 11/26/2015 
// Design Name: 
// Module Name:    TMC_S3 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
// Commands:
//  . .   ..  ..  .. ..    ..  ..     .. ..     .    ...        ....   
// 01CA  pw1 pw2 pw3 pw4  io1 io2   pwm1 pwm3  crc8  24x0       32x0 
// CAFE    pos1    pos2    pos3        pos4     io1 io2     drv crc8 crcok(FF)
//  . .    .. ..   .. ..   .. ..      .. ..      ..  ..      ..   . .
//  .  .    ....   ..    ..   .... ...
// 02 w+adr data  crc16  16x0 32x0 24x0
// CAFE   32x0       32x0     data crc16 crcok
//  . .   ....       ....     ....  ...
//
//////////////////////////////////////////////////////////////////////////////////
module TMC_S3(clk, resetn, sclk, csn, mosi, miso, ssclk, scsn, smosi, smiso, step0,step1,step2,step3,dir0,dir1,dir2,dir3,enn0,enn1,enn2,enn3);

input clk,resetn;
input miso,ssclk, scsn,smosi;
output sclk,csn,mosi;
output smiso,step0,step1,step2,dir0,dir1,dir2,enn0,enn1,enn2,step3,dir3,enn3;

wire clk,resetn, sclk,csn,mosi,miso, ena,enb,clka,clkb, reseta,resetb, ssclk, scsn, smiso, smosi;
wire step0,step1,step2,dir0,dir1,dir2,enn0,enn1,enn2;
wire[3:0] wea,web;
wire[31:0] addra,addrb, dina, dinb, douta, doutb;
wire[3:0] step,dir,enn;


TMC_CONTROLLER tmc(clk,resetn, sclk,csn,mosi,miso,step,dir,enn , wea,web, addra,addrb, dina, dinb, douta, doutb, ena,enb, clka,clkb, reseta,resetb, ssclk, scsn, smiso, smosi);
memory blkmem(clka,ena,wea[0],addra[7:2],dina,douta,clkb,enb,web[0],addrb[7:2],dinb,doutb);

assign step0 = step[0];
assign step1 = step[1];
assign step2 = step[2];
assign step3 = step[3];
assign dir0 = dir[0];
assign dir1 = dir[1];
assign dir2 = dir[2];
assign dir3 = dir[3];
assign enn0 = enn[0];
assign enn1 = enn[1];
assign enn2 = enn[2];
assign enn3 = enn[3];






endmodule
