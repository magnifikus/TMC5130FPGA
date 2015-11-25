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
interface StepgenControl(input clk);
    logic resetn;
    logic pause, enableDriver, dcenable;
    logic[16:0] pulsewidth;
    logic[31:0] position;
    logic dcmiss;
    modport Slave (
        input clk,resetn,pause,enableDriver,dcenable,pulsewidth,
        output dcmiss,position
    );
    modport Master (
        output resetn,pause,enableDriver,dcenable,pulsewidth,
        input dcmiss,position
    );
endinterface

interface TMC5131A_INT;
    logic step, dir, dci,dce, enable,dco;
    modport Master (output step,dir,dci,dce,enable,input dco);
    modport Slave (input step,dir,dci,dce,enable,output dco);
endinterface

module stepgenerator(StepgenControl.Slave cntrl, TMC5131A_INT.Master drv);
    parameter CLK_FREQ = 100000000;
    parameter STEP_DEDGE = 0;
    parameter DCSTEP = 0;
  
    int stepcount;
    shortint pulsewidths,pulsewidthu;
    int stepexec;
    logic clk,resetn;
            
    always_comb begin
        clk = cntrl.clk;
        resetn = cntrl.resetn;
        pulsewidths = cntrl.pulsewidth;
        pulsewidthu = (pulsewidths<0)?-pulsewidths:pulsewidths;
    end
            
    always_comb begin
        drv.enable <=  !(cntrl.resetn && cntrl.enableDriver); 
        drv.dce <= drv.enable == 1 && DCSTEP == 1 &&cntrl.dcenable == 1;
        cntrl.dcmiss <= 0;
        drv.dci <= 0;
        drv.dce <= 0;
    end
    
    always_ff @(posedge clk iff resetn == 1 or negedge resetn)
        begin : stepgen
        if (!resetn) begin
          stepcount    <= 0;
          cntrl.position <= 0;
          drv.step <= 0;
          drv.dir <= 0;
          stepexec <= 0;
          $display ("Reset is asserted STEGENERTOR");
        end else begin
          if (cntrl.enableDriver) begin
            stepcount++;
            if (pulsewidthu != 0 && stepcount >= pulsewidthu && stepexec == 0 && cntrl.pause == 0) begin
                stepcount <= 0;
                drv.dir = pulsewidths < 0;
                stepexec <= 22;
            end 
            if (stepexec > 0) begin
                stepexec--;
                if (stepexec == 20) begin
                    drv.step <= 1;
                    if (pulsewidths > 0)
                        cntrl.position++;
                    else
                        cntrl.position--;
                end
                if (stepexec == 10)
                    drv.step <= 0;
            end
             
          end
        end
      end 
endmodule






