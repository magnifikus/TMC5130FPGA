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
module TMC_S3(clk, sclk, csn, mosi, miso, ssclk, scsn, smosi, smiso, step0,step1,step2,step3,dir0,dir1,dir2,dir3,enn0,enn1,enn2,enn3,led0,led1,led2,led3,btn0,btn1,
					dce0,dce1,dce2,dce3,dco0,dco1,dco2,dco3,dci0,dci1,dci2,dci3, gpi,gpo);
input wire[15:0] gpi;
output wire[15:0] gpo;
input clk,btn0,btn1;
input miso,ssclk, scsn,smosi;
output sclk,csn,mosi;
output reg led0,led1,led2,led3;
output smiso,step0,step1,step2,dir0,dir1,dir2,enn0,enn1,enn2,step3,dir3,enn3;
input dco0,dco1,dco2,dco3;
output reg dce0,dce1,dce2,dce3, dci0,dci1,dci2,dci3;

wire clk, sclk,csn,mosi,miso, ena,enb,clka,clkb, reseta,resetb, ssclk, scsn, smiso, smosi;
wire step0,step1,step2,dir0,dir1,dir2,enn0,enn1,enn2;
wire[3:0] wea,web;
wire[31:0] addra,addrb, dina, dinb, douta, doutb;
wire[3:0] step,dir,enn;

reg resetn;

always resetn = btn0 || btn1;


always led0 = ~csn;
always led1 = ~scsn;
always led2 = step0;
always led3 = 1;

always begin
	dce0 = 0;
	dce1 = 0;
	dce2 = 0;
	dce3 = 0;
	dci0 = 0;
	dci1 = 0;
	dci2 = 0;
	dci3 = 0;
end


TMC_CONTROLLER tmc(clk,resetn, sclk,csn,mosi,miso,step,dir,enn , wea,web, addra,addrb, dina, dinb, douta, doutb, ena,enb, clka,clkb, reseta,resetb, ssclk, scsn, smiso, smosi, gpi, gpo);
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
