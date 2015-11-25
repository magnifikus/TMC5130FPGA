`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Moritz Kunze 
// 
// Create Date: 18.11.2015 20:51:07
// Design Name:  TMC5130A Interface
// Module Name: tmcspi
// Project Name:  
// Target Devices:  
// Tool Versions: 2015.1
// Description:  
//      SPI Interfacing of Trinamic TMC5130A Chips
//       Supports BulkReading from upto 7 Registers (limited by chips and 64*32B memory size) 
//       Single Register Transfer Read and Write 
//       Supports upto 8 daisy chain chips
//       Bulktransfer of 7 registers for 8 chips at 3,8MHz SPI-clock needs ~600uS
//
// Dependencies:  SPI_MASTER module 
//                External Blockram with 2cycles latency on read
//                                      and single cycle writes
//                             
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//
//  Register Map:
//  0x00          [Num Chips1..8][NumReadReg(0...7)]
//  0x01                [CmdWRRegister|UpdStatusCmd] // clears when done
//  0x02  [Error when != 0][WR+Register][ChipSelect] 
//  0x03                                   WR Result
//  0x04                                 SPI Divisor                                              
//  0x05              Read Regs 0+7 bit * 4 (3 2 1 0)
//  0x06              Read Regs 0+7 bit * 3  ( 6 5 4)
//  0x07                                    reserved
//  0x08          [3*RSEL+1][3*CSEL]   readreg c0 r0               
//  0x09                               readreg c1 r0   
//  0x0a                               readreg c2 r0
//  0x0b                               readreg c3 r0
//  0x0c                               readreg c4 r0
//  0x0d                               readreg c5 r0
//  0x0e                               readreg c6 r0
//  0x0f                               readreg c7 r0
//  0x10                               readreg c0 r1
//  0x11                               readreg c1 r1   
//  0x12                               readreg c2 r1
//  0x13                               readreg c3 r1
//  0x14                               readreg c4 r1
//  0x15                               readreg c5 r1
//  0x16                               readreg c6 r1
//  0x17                               readreg c7 r1
//  0x18                               readreg c0 r2
//  0x19                               readreg c1 r2   
//  0x1a                               readreg c2 r2
//  0x1b                               readreg c3 r2
//  0x1c                               readreg c4 r2
//  0x1d                               readreg c5 r2
//  0x1e                               readreg c6 r2
//  0x1f                               readreg c7 r2
//  0x20                               readreg c0 r3        
//  0x21                               readreg c1 r3   
//  0x22                               readreg c2 r3
//  0x23                               readreg c3 r3
//  0x24                               readreg c4 r3
//  0x25                               readreg c5 r3
//  0x26                               readreg c6 r3
//  0x27                               readreg c7 r3
//  ...
//        
//  
//
//////////////////////////////////////////////////////////////////////////////////


module tmcspi (input clk, resetn, output logic[5:0] addr , output logic we,output logic[31:0] din, input logic[31:0] dout, output sclk, mosi,csn, input miso, output int states);
                                  
    SPI_MASTER_INTERFACE spim (clk,clk,~resetn); 
    SPI spi ();
    assign sclk = spi.sclk;
    assign mosi = spi.mosi;
    assign csn = spi.csn;
    assign spi.miso = miso;
    
    SPI_MASTER_WRAP spimaster (spi,spim);


    byte state, next;  // FSM States
    byte memreal[2:0]; // current memory read addr shift reg
    byte memaddr;       // current memory read addr reading
    logic[1:0] memwrite; // delay for memory write
    
    logic trig;   // combine trigger for start condition on register 01 
    byte numchips;  // buffer for number of chips present
    byte numregs;   // buffer for number of status registers 
    byte readregs[7];  // registers to be read for status
        
    byte p_chip;  // pointer to current chip write
    byte p_reg;   // pointer to current register write
    byte p_rchip;  //´pointer to current chip read
    byte p_rreg;   // pinter to current register read
    
    byte t_chip;    // target chip of transfer
    byte t_reg;     // target register of transfer
    logic t_write;  // if target is write operation
    byte delay;
    logic[5:0] p_ram;  //  Ram translation for status updates from p_rchip & p_rreg
    
    always_comb states[7:0] = state;
    always_comb states[15:8] = p_chip;
    always_comb states[23:16] = p_reg;
    
    always_comb p_ram = {p_rreg[2:0],p_rchip[2:0]};  // ram translation for status update      
    //always_comb mem.clk = clk;                        // forward clock for ram
    always_comb memaddr = memreal[0];                 // pointer of current ram reading
    always_comb trig = (memaddr == 'h01 && dout[1:0] > 0);  // trigger composition
    always_ff @(posedge(clk) && resetn == 1) begin   // shifting of memory stuff
        //memreal[0] <= memreal[1];
        //memreal[1] <= memreal[2];
        memreal[0] <= addr;
        //memwrite[0] <= memwrite[1];
        memwrite[0] <= we;
    end
    
    parameter IDLE     =  0,  // FSM States  
               RB      = 1,   // ReadBulk init
               RB_READ = 2,   // ReadBulk Reading op
               RB_READW = 3,  // ReadBulk Reading wait
               RB_SWITCH = 4,  // switch register, needs Chip select reset
               RB_SWITCH2 = 15,
               RB_READW2 = 16,
               TRANSFER = 5,  // Register Transfer init
               WRITE   = 6,   // Write stage of transfer
               WRITEW  = 7,   // wait for write 
               WRITEWW = 8,   // chip select reset
               READ    = 9,   // read for transfer
               TRANSEND = 10;  // finish transfer
 
     always @(posedge(clk)) begin
          next = state;
          if (!resetn)  begin
            next = IDLE;
            delay <= 0;
          end else if (delay > 0)
            delay--;
          else begin 
          unique case (state)
                IDLE : begin
                        spim.wren_i <= 0;
                        we <= 0;
                        addr <= 'h01; // we need reg 01
                        if (memaddr == 'h01) begin // got reg 01
                            if (dout[1] == 1)  // Transfer operation
                                next = TRANSFER;
                            else if (dout[0] == 1)  // Status update (Bulkd Read)
                                next = RB;
                            else next = IDLE; 
                        end else
                            next = IDLE;
                    end
                RB : begin
                           addr <= 'h00;
                           if (memaddr == 'h00) begin  // read all stuff we need 
                                numregs <= dout[7:0];
                                numchips <= dout[15:8];
                                addr <= 'h05;
                                next = RB;
                                delay <= 2;
                           end else if (memaddr == 'h05) begin
                                readregs[0] <= dout[7:0];
                                readregs[1] <= dout[15:8];
                                readregs[2] <= dout[23:16];
                                readregs[3] <= dout[31:24];
                                addr <= 'h06;
                                delay <= 2;
                                next = RB;
                           end else if (memaddr == 'h06) begin
                                readregs[4] <= dout[7:0];
                                readregs[5] <= dout[15:8];
                                readregs[6] <= dout[23:16];
                                next = RB_READ;
                                p_reg <= 0; // start with reg0
                                p_chip <= numchips-1; // start with highest chip present
                                p_rchip <= numchips-1;
                                p_rreg <= 'b000;  
                           end else
                                next = RB;
                   end
                RB_READ : begin
                        spim.di_i[39]    <= 'b0;   // write register bit is low here, we want to read
                        if (p_rreg < numregs)      
                            spim.di_i[38:32] <= readregs[p_reg];  // push register addr into buffer
                        else spim.di_i[38:32] <= 'b0000000;  // on last register round (final readout) we need no register addr
                        spim.di_i[31:0]  <= 'h00000000; // data is 0 always on read
                        spim.wren_i <= 1;   // latch to spi
                        if (spim.wr_ack_o == 1) next = RB_READW; // wait for ack
                             else next = RB_READ;
                    end
                RB_READW : begin
                       spim.wren_i <= 0;  // disable latch
                       if (spim.di_req_o == 1) begin   // spi needs data
                            if (p_chip == 0)   // we are done with this round, CS switching needed
                                if (p_reg > 0)
                                    next = RB_SWITCH; // wait for last data
                                else  
                                    next = RB_SWITCH2; // direct wait for idle
                            else begin
                                p_chip--;  // next chip
                                if (p_rreg > 0)  // if we are in receive phase
                                    next = RB_READW2;
                                else next = RB_READ;
                            end
                       end else
                            next = RB_READW;
                    end
                RB_READW2 : begin
                       spim.wren_i <= 0;  // disable latch
                       if (p_rreg > 0 && spim.do_valid_o == 1) begin  // receive but first on 2nd round (first has no usable data)
                            din <= spim.do_o;  
                            addr <= p_ram;  // translated mem addr
                            p_rchip--;
                            we <= 1;
                            next = RB_READ;
                       end 
                  end
                RB_SWITCH : begin
                     if (spim.do_valid_o == 1) begin    // from 2nd round on, we need to receive last data also if we dont have all
                        din <= spim.do_o;
                        addr <= p_ram;
                        p_rchip--;
                        we <= 1;
                        next = RB_SWITCH2;
                    end else next = RB_SWITCH; 
                  end  
               RB_SWITCH2: begin 
                    if (spim.idle_o == 1) begin // wait for spi going idle (CS asserted)
                        if (p_reg == numregs) begin // if we are done 
                           addr <= 'h01;  // clear the cmd flag
                           din <= 0;
                           we <= 1;
                           next = IDLE;
                       end else begin
                           p_reg++;    // next register
                           p_rreg++;   // init stuff again
                           p_chip <= numchips-1;
                           p_rchip <= numchips-1;
                           next = RB_READ;
                       end
                   end else
                       next = RB_SWITCH2;
               
                  end
               TRANSFER: begin    // Init stuff for the Transfer, reading in parameters
                    if (memaddr == 'h00) begin  
                        numregs <= dout[7:0];
                        numchips <= dout[15:8];
                        addr <= 'h02;
                        next = TRANSFER;
                    end else if (memaddr == 'h02) begin
                        t_chip <= {5'b00000,dout[2:0]};
                        t_reg <= {1'b0,dout[14:8]};
                        t_write <= dout[15];
                        addr <= 'h03;                    
                        next = TRANSFER;
                    end else if (memaddr == 'h03) begin
                        p_chip <= numchips-1;
                        next = WRITE;
                    end else begin
                        addr <= 'h00;
                        next = TRANSFER; 
                    end                         
                  end   
               WRITE : begin  // writing the data to chip, if we are reading only sending the register we want
                    if (p_chip == t_chip) begin   // target chip?
                        if (t_write == 1)
                            spim.di_i <= {1'b1,t_reg[6:0],dout};
                        else spim.di_i <= {1'b0,t_reg[6:0],'h000000};
                    end else spim.di_i <= 'h00000000;  // nulls to chips we dont want to talk to
                    spim.wren_i <= 1;
                    if (spim.wr_ack_o == 1) begin  // clear latch and advance
                        next = WRITEW;
                        spim.wren_i <= 0;
                     end else next = WRITE;
                  end
               WRITEW : begin
                    if (spim.di_req_o == 1) begin   // on request, we need to advance a chip
                        if (p_chip == 0) begin  // we are done, lets go to reading, but first CS deassert stuff
                            p_chip <= numchips-1;
                            p_rchip <= numchips-1;
                            next = WRITEWW;
                        end else begin
                            p_chip--;
                            next = WRITE;
                        end
                    end else next = WRITEW;
               end
               WRITEWW : begin
                    if (spim.idle_o == 1) begin  // okay CS was asserted, lets go again
                        spim.di_i <= 'h00000000;  // only nulls needed now
                        spim.wren_i <= 1;
                        if (spim.wr_ack_o == 1) begin 
                            next = READ;
                            spim.wren_i <= 0;
                         end else next = WRITEWW;
                    end else next = WRITEWW;
               end
               READ: begin
                    if (spim.di_req_o == 1 && spim.wren_i == 0) begin  // send fake data
                        spim.di_i <= 'h00000000;
                        spim.wren_i <= 1;
                        p_chip--;
                    end
                    if (spim.wr_ack_o == 1) begin  // and clear latch
                        spim.wren_i <= 0;
                    end
                    if (spim.do_valid_o == 1) begin  // receiving now
                        if (p_rchip == t_chip) begin // target chip?
                            addr <= 'h03;   // transfer data to ram
                            din <= spim.do_o[31:0];
                            we <= 1;    
                        end
                        if (p_rchip > 0) begin  // work still todo
                            p_rchip--;
                            next = READ;    
                        end else begin
                            next = TRANSEND;     // finish 
                        end  
                    end else next = READ;
                 end
               TRANSEND: begin
                     // clear command flag, return to idle
                     addr <= 'h01;
                     din <= 0;
                     we <= 1;
                     next = IDLE;    
                 end
               default: next = IDLE;
          endcase
       end
       state = next;
   end
endmodule
