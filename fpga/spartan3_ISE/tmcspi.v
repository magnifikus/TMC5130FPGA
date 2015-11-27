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


module tmcspi (clk, resetn,addr ,  we, din, dout, sclk, mosi,csn, miso);
    input wire clk, resetn;
    output reg[5:0] addr;
    output reg we;
    output reg[31:0] din;
    input wire[31:0] dout;
    output wire mosi,csn,sclk;
    input wire miso;
    
    
    reg wren_i;
    reg[39:0] di_i;
    wire sclk_i,pclk_i, idle_o, spi_ssel_o, spi_sck_o, spi_mosi_o, spi_miso_i, di_req_o, wr_ack_o, do_valid_o;
    wire[39:0] do_o;
    SPI_MASTER spim(.sclk_i(sclk_i),
                    .pclk_i(pclk_i),
						  .rst_i(~resetn),
                    .idle_o(idle_o),
                    .spi_ssel_o(csn),
                    .spi_sck_o(sclk),
                    .spi_mosi_o(mosi),
                    .spi_miso_i(miso),
                    .di_req_o(di_req_o),
                    .di_i(di_i),
                    .wren_i(wren_i),
                    .wr_ack_o(wr_ack_o),
                    .do_valid_o(do_valid_o),
                    .do_o(do_o),.sck_ena_o(),.sck_ena_ce_o(),.do_transfer_o(),.wren_o(),.rx_bit_reg_o(),.state_dbg_o(),.core_clk_o(),.core_n_clk_o(),
						  .core_ce_o(),.core_n_ce_o(),.sh_reg_dbg_o()
                    );
                                
    assign sclk_i = clk;
    assign pclk_i = clk;


    reg[7:0] state, next;  // FSM States
    
   
    reg[3:0] numchips;  // buffer for number of chips present
    reg[3:0] numregs;   // buffer for number of status registers 
    reg[7:0] readregs[6:0];  // registers to be read for status
        
    reg[4:0] p_chip;  // pointer to current chip write
    reg[4:0] p_reg;   // pointer to current register write
    reg[4:0] p_rchip;  //´pointer to current chip read
    reg[4:0] p_rreg;   // pinter to current register read
    
    reg[4:0] t_chip;    // target chip of transfer
    reg[6:0] t_reg;     // target register of transfer
    reg t_write;  // if target is write operation
    reg [3:0] delay;
    reg[5:0] p_ram;  //  Ram translation for status updates from p_rchip & p_rreg
    
    
    always @(p_rreg,p_rchip) p_ram = {p_rreg[2:0],p_rchip[2:0]};  // ram translation for status update      

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
            delay <= delay -1;
          else begin 
          case (state)
                IDLE : begin
                        wren_i <= 0;
                        we <= 0;
                        addr <= 'h01; // we need reg 01
                        if (addr == 'h01) begin // got reg 01
                            if (dout[1] == 1)  // Transfer operation
                                next = TRANSFER;
                            else if (dout[0] == 1)  // Status update (Bulkd Read)
                                next = RB;
                            else next = IDLE; 
                        end else
                            next = IDLE;
                    end
                RB : begin
                           if (addr == 'h01) begin
										addr <= 'h00;
										delay <= 2;
                           end else if (addr == 'h00) begin  // read all stuff we need 
                                numregs <= dout[7:0];
                                numchips <= dout[15:8];
                                addr <= 'h05;
                                next = RB;
                                delay <= 2;
                           end else if (addr == 'h05) begin
                                readregs[0] <= dout[7:0];
                                readregs[1] <= dout[15:8];
                                readregs[2] <= dout[23:16];
                                readregs[3] <= dout[31:24];
                                addr <= 'h06;
                                delay <= 2;
                                next = RB;
                           end else if (addr == 'h06) begin
                                readregs[4] <= dout[7:0];
                                readregs[5] <= dout[15:8];
                                readregs[6] <= dout[23:16];
                                next = RB_READ;
                                p_reg <= 0; // start with reg0
                                p_chip <= numchips-1; // start with highest chip present
                                p_rchip <= numchips-1;
                                p_rreg <= 'b000;  
                           end else begin
										addr <= 'h00;
										delay <= 2;
									end 
                   end
                RB_READ : begin
                        di_i[39]    <= 'b0;   // write register bit is low here, we want to read
                        if (p_rreg < numregs)      
                            di_i[38:32] <= readregs[p_reg];  // push register addr into buffer
                        else di_i[38:32] <= 'b0000000;  // on last register round (final readout) we need no register addr
                        di_i[31:0]  <= 'h00000000; // data is 0 always on read
                        wren_i <= 1;   // latch to spi
                        if (wr_ack_o == 1) next = RB_READW; // wait for ack
                             else next = RB_READ;
                    end
                RB_READW : begin
                       wren_i <= 0;  // disable latch
                       if (di_req_o == 1) begin   // spi needs data
                            if (p_chip == 0)   // we are done with this round, CS switching needed
                                if (p_reg > 0)
                                    next = RB_SWITCH; // wait for last data
                                else  
                                    next = RB_SWITCH2; // direct wait for idle
                            else begin
                                p_chip <= p_chip -1;  // next chip
                                if (p_rreg > 0)  // if we are in receive phase
                                    next = RB_READW2;
                                else next = RB_READ;
                            end
                       end else
                            next = RB_READW;
                    end
                RB_READW2 : begin
                       wren_i <= 0;  // disable latch
                       if (p_rreg > 0 && do_valid_o == 1) begin  // receive but first on 2nd round (first has no usable data)
                            din <= do_o;  
                            addr <= p_ram;  // translated mem addr
                            p_rchip <= p_rchip -1;
                            we <= 1;
                            next = RB_READ;
                       end 
                  end
                RB_SWITCH : begin
                     if (do_valid_o == 1) begin    // from 2nd round on, we need to receive last data also if we dont have all
                        din <= do_o;
                        addr <= p_ram;
                        p_rchip <= p_rchip-1;
                        we <= 1;
                        next = RB_SWITCH2;
                    end else next = RB_SWITCH; 
                  end  
               RB_SWITCH2: begin 
                    if (idle_o == 1) begin // wait for spi going idle (CS asserted)
                        if (p_reg == numregs) begin // if we are done 
                           addr <= 'h01;  // clear the cmd flag
                           din <= 0;
                           we <= 1;
                           next = IDLE;
									delay <= 2;
                       end else begin
                           p_reg <= p_reg+1;    // next register
                           p_rreg <= p_rreg +1;   // init stuff again
                           p_chip <= numchips-1;
                           p_rchip <= numchips-1;
                           next = RB_READ;
                       end
                   end else
                       next = RB_SWITCH2;
                  end
               TRANSFER: begin    // Init stuff for the Transfer, reading in parameters
						  if (addr == 'h01) begin
								addr <= 'h00;
								delay <= 2;
						  end else if (addr == 'h00) begin  
                        numregs <= dout[7:0];
                        numchips <= dout[15:8];
                        addr <= 'h02;
								delay <= 2;
                    end else if (addr == 'h02) begin
                        t_chip <= {5'b00000,dout[2:0]};
                        t_reg <= {1'b0,dout[14:8]};
                        t_write <= dout[15];
                        addr <= 'h03;       
								delay <= 2;								
                    end else if (addr == 'h03) begin
                        p_chip <= numchips-1;
                        next = WRITE;
                    end else begin
                        addr <= 'h00;
								delay <= 2;
                    end                         
                  end   
               WRITE : begin  // writing the data to chip, if we are reading only sending the register we want
                    if (p_chip == t_chip) begin   // target chip?
                        if (t_write == 1)
                            di_i <= {1'b1,t_reg[6:0],dout};
                        else di_i <= {1'b0,t_reg[6:0],'h000000};
                    end else di_i <= 'h00000000;  // nulls to chips we dont want to talk to
                    wren_i <= 1;
                    if (wr_ack_o == 1) begin  // clear latch and advance
                        next = WRITEW;
                        wren_i <= 0;
                     end else next = WRITE;
                  end
               WRITEW : begin
                    if (di_req_o == 1) begin   // on request, we need to advance a chip
                        if (p_chip == 0) begin  // we are done, lets go to reading, but first CS deassert stuff
                            p_chip <= numchips-1;
                            p_rchip <= numchips-1;
                            next = WRITEWW;
                        end else begin
                            p_chip <= p_chip -1;
                            next = WRITE;
                        end
                    end else next = WRITEW;
               end
               WRITEWW : begin
                    if (idle_o == 1) begin  // okay CS was asserted, lets go again
                        di_i <= 'h00000000;  // only nulls needed now
                        wren_i <= 1;
                        if (wr_ack_o == 1) begin 
                            next = READ;
                            wren_i <= 0;
                         end else next = WRITEWW;
                    end else next = WRITEWW;
               end
               READ: begin
                    if (di_req_o == 1 && wren_i == 0) begin  // send fake data
                        di_i <= 'h00000000;
                        wren_i <= 1;
                        p_chip <= p_chip -1;
                    end
                    if (wr_ack_o == 1) begin  // and clear latch
                        wren_i <= 0;
                    end
                    if (do_valid_o == 1) begin  // receiving now
                        if (p_rchip == t_chip) begin // target chip?
                            addr <= 'h03;   // transfer data to ram
                            din <= do_o[31:0];
                            we <= 1;    
                        end
                        if (p_rchip > 0) begin  // work still todo
                            p_rchip <= p_rchip -1;
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
							delay <= 2;
                 end
               default: next = IDLE;
          endcase
       end
       state = next;
   end
endmodule
