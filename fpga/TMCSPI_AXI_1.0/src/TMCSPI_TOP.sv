`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2015 15:21:28
// Design Name: 
// Module Name: TMCSPI_TOP
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


module TMCSPI_TOP( input clk, resetn,dout,
                   output addr,din,we,memclk,memreset,
                   output sclk,csn,mosi,
                   input miso
    );
    MemoryDPInterface mem();
    SPI spi();
    
    tmcspi tspi(clk,resetn,mem,spi);
    assign memreset = ~resetn;
    assign sclk = spi.sclk;
    assign csn = spi.csn;
    assign mosi = spi.mosi;
    assign spi.miso = miso;
    assign memclk = clk;
    assign din = mem.dina;
    assign addr = mem.addra;
    assign we = mem.wea;
    assign mem.douta = din;
endmodule
