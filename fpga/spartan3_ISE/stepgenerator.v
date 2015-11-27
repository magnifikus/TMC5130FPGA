`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2015 15:32:59
// Design Name: 
// Module Name: stepgenerator
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


module stepgenerator(clk,resetn, enable, pause, pulsewidth, position, step,dir,enn);
    parameter CLK_FREQ = 100000000;
    parameter STEP_DEDGE = 0;
    parameter DCSTEP = 0;
  
  
    input wire signed[15:0] pulsewidth;
    input wire pause, resetn,clk, enable;
    output reg step,dir,enn;
    wire[14:0] pulsewidthu;
    integer stepcount;
    integer stepexec;
    output integer position;
        
    
    
    
    assign pulsewidthu = (pulsewidth<0)?-pulsewidth:pulsewidth;
    always @(resetn,enable) enn <= !(resetn && enable);
            
    always @(posedge(clk))
        begin : stepgen
        if (!resetn) begin
          stepcount    <= 0;
          position <= 0;
          step <= 0;
          dir <= 0;
          stepexec <= 0;
          $display ("Reset is asserted STEGENERTOR");
        end else begin
          if (enable) begin
            stepcount <= stepcount +1;
            if (pulsewidthu != 0 && stepcount >= pulsewidthu && stepexec == 0 && pause == 0) begin
                stepcount <= 0;
                dir <= pulsewidth < 0;
                stepexec <= 22;
            end 
            if (stepexec > 0) begin
                stepexec <= stepexec -1;
                if (stepexec == 20) begin
                    step <= 1;
                    if (dir == 0)
                        position <= position +1;
                    else
                        position <= position -1;
                end
                if (stepexec == 10)
                    step <= 0;
            end
             
          end
        end
      end 
endmodule






