`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2015 22:01:43
// Design Name: 
// Module Name: SPI_MASTER_WRAP
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


interface SPI_MASTER_INTERFACE (input logic sclk_i, pclk_i, rst_i);
    logic spi_ssel_o, spi_sck_o, spi_mosi_o, spi_miso_i;
    logic di_req_o, wren_i, wr_ack_o,do_valid_o, idle_o;
    logic[39:0] di_i, do_o;
    modport MASTER(input sclk_i, pclk_i, rst_i, spi_miso_i, wren_i, di_i, output idle_o, spi_ssel_o, spi_sck_o, spi_mosi_o, di_req_o, wr_ack_o, do_valid_o, do_o);
    modport SYSTEM(output  spi_miso_i, wren_i, di_i, input idle_o, spi_ssel_o, spi_sck_o, spi_mosi_o, di_req_o, wr_ack_o, do_valid_o, do_o);
endinterface
interface SPI;
    logic miso,mosi,sclk,csn;
    modport MASTER(output sclk,mosi,csn, input miso);
endinterface

module SPI_MASTER_WRAP(SPI.MASTER spi, SPI_MASTER_INTERFACE.MASTER interf);
    SPI_MASTER spim(.sclk_i(interf.sclk_i),
                    .pclk_i(interf.pclk_i),
                    .idle_o(interf.idle_o),
                    .spi_ssel_o(interf.spi_ssel_o),
                    .spi_sck_o(interf.spi_sck_o),
                    .spi_mosi_o(interf.spi_mosi_o),
                    .spi_miso_i(interf.spi_miso_i),
                    .di_req_o(interf.di_req_o),
                    .di_i(interf.di_i),
                    .wren_i(interf.wren_i),
                    .wr_ack_o(interf.wr_ack_o),
                    .do_valid_o(interf.do_valid_o),
                    .do_o(interf.do_o)
                    );
    defparam spim.SPI_2X_CLK_DIV = 13;
    defparam spim.N = 40;
    always_comb begin
        spi.sclk = interf.spi_sck_o;
        spi.csn = interf.spi_ssel_o;
        spi.mosi = interf.spi_mosi_o;
        interf.spi_miso_i = spi.miso;
    end 
endmodule