`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2015 19:03:54
// Design Name: 
// Module Name: TMCSPI_TB
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


module TMCSPI_TB();
   logic clk, resetn,we,sclk,mosi,miso,csn;
   logic[31:0] din,dout;
   logic[5:0] addr;
   int states;
   int regs[64];
    
   always begin
        #0.5 clk = 1;
        #0.5 clk = 0;
   end 

   tmcspi dut (.*);
   
   always_ff @(clk) begin
    dout <= regs[addr];
    if (we)
        regs[addr] <= din;
   end
   
   initial begin
        resetn = 0;
        miso = 1;
        regs[0] = 'h00000807;
        regs[5] = 'h04030201;
        regs[6] = 'h00070605;
        #10
        resetn = 1;
        #5
        regs[1] = 'h00000001;
   end

endmodule
