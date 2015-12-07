`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2015 14:42:08
// Design Name: 
// Module Name: TMC_CONTROLLER
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


module TMC_CONTROLLER(clk,resetn, sclk,csn,mosi,miso, step,dir,enn, wea,web, addra,addrb, dina, dinb, douta, doutb, ena,enb, clka,clkb, reseta,resetb, ssclk, scsn, smiso, smosi, gpi, gpo);
    parameter N_INT = 4;

    input wire clk,resetn;
    input wire miso;
    output wire sclk,mosi,csn;
    
    output wire[N_INT-1:0] step;
    output wire[N_INT-1:0] dir;
    output wire[N_INT-1:0] enn; 
    
    
    input wire[31:0] douta,doutb;
    output wire[31:0] addrb, dinb;
	 output reg[31:0] addra,dina;
    output wire[3:0] web;
	 output reg[3:0] wea;
    output wire enb;
	 output reg ena;
    output wire clka,clkb,reseta,resetb;
    
    input wire ssclk, scsn, smosi;
    output wire smiso;
    
    input wire[15:0] gpi;
	 output reg[15:0] gpo;
    
    //StepgenControl scntr[N_INT-1:0] (clk);
    //TMC5131A_INT stepdir[N_INT-1:0] ();
    
    assign enb = 1;
    wire weTMC;
    wire[31:0] dinTMC,doutTMC;
    wire[5:0] addrTMC;
    
    tmcspi tmcspi(.clk(clk),.resetn(resetn), .addr(addrTMC), .din(dinTMC), .dout(doutTMC), .we(weTMC),.sclk(sclk),.mosi(mosi),.csn(csn),.miso(miso));
    assign clka = clk;
    assign clkb = clk;
    assign reseta = ~resetn;
    assign resetb = ~resetn;
    assign addrb[1:0] = 0;
    assign addrb[31:8] = 0;
    assign addrb[7:2] = addrTMC;
    assign dinb = dinTMC;
    assign doutTMC = doutb;
    assign web[0] = weTMC;
    assign web[1] = weTMC;
    assign web[2] = weTMC;
    assign web[3] = weTMC;
     
    reg enable[N_INT-1:0];
    reg pause[N_INT-1:0];
    reg[15:0] pulsewidth[N_INT-1:0];
    wire[31:0] position[N_INT-1:0];
    
	 wire[15:0] gpi_d;
	 
    genvar i;  
    generate  
    for (i=0; i < N_INT; i=i+1)  
      begin: gen_code_label  
       stepgenerator stepgen (.clk(clk),.resetn(resetn),.pause(pause[i]),.enable(enable[i]),.pulsewidth(pulsewidth[i]),.position(position[i]),.step(step[i]),.dir(dir[i]),.enn(enn[i]));
      end  
    endgenerate  
    
	 genvar i2;
	 generate
		for (i2=0; i2 < 16; i2=i2+1) begin: gen_debounce
			Debouncer db (clk, gpi[i2], gpi_d[i2]);
		end
	 endgenerate
	 
	 
	 
reg[7:0] spi_di;
reg[23:0] pos_buf;
wire[7:0] spi_do;
reg spi_wren;
wire spi_wr_ack,spi_do_valid;

SPI_SLAVE spislave(.clk_i(clk),.spi_ssel_i(scsn),.spi_sck_i(ssclk),.spi_mosi_i(smosi),.spi_miso_o(smiso),.di_req_o(spi_di_req),.di_i(spi_di),
						.wren_i(spi_wren),.wr_ack_o(spi_wr_ack),.do_valid_o(spi_do_valid),.do_o(spi_do),.do_transfer_o(),.wren_o(),.rx_bit_next_o(),
						.state_dbg_o(),.sh_reg_dbg_o());




parameter RESET    = 0, // FSM States  
			 IDLE     =  1, 
          STARTUP   = 2,
			 CMD01  = 3,
			 CMD01_2 = 4,
			 CMD01_EXEC1 = 5,
			 CMD02 = 6,
			 CMD02_2 = 7,
			 COOLDOWN = 62,
			 COOLDOWN2 = 63;
integer state,next;
integer delay;
integer j;
integer cmdpointer;
reg[151:0] inbuf;
reg[7:0] crc_ok;
reg[7:0] crc_in;
wire[15:0] crc_out;
reg crc_en,crc_rst;
reg[7:0] crc_in2;
wire[15:0] crc_out2;
reg crc_en2,crc_rst2;


reg[20:0] idlecount;

crc crc(crc_in,crc_en,crc_out,crc_rst,clk);
crc crc2(crc_in2,crc_en2,crc_out2,crc_rst2,clk);


always @(posedge(clk)) begin
	crc_en <= 0;
	crc_en2 <= 0;
	next = state;
	if (!resetn)  begin
		next = RESET;
		delay <= 0;
		spi_wren <= 0;
		crc_rst <= 1;
		crc_en <= 0;
		crc_in2 <= 0;
		crc_rst2 <= 1;
		crc_en2 <= 0;
		crc_in2 <= 0;
		ena <= 1;
		wea <= 'b0000;
		gpo <= 'h0000;
		idlecount <= 0;
		for (j=0; j < N_INT; j=j+1) begin
			pulsewidth[j] <= 0;
			enable[j] <= 0;
			pause[j] <= 0;
		end
	end else if (delay > 0)
		delay <= delay -1;
	else begin
		
		spi_wren <= 0;
		
		case (state)
			RESET: begin
				spi_di <= 'hCA;
				spi_wren <= 1;
				if (spi_wr_ack) begin
					next = IDLE;
				end
			end
			IDLE : begin
				crc_rst2 <= 1;
				crc_rst <= 1;
				
				if (spi_di_req == 1) begin
					idlecount <= 0;
					next = STARTUP;
					crc_rst <= 0;
					crc_ok <= 0;
					crc_rst2 <= 0;
					crc_in2 <= 'hCA;
					crc_en2 <= 1;
					spi_di <= 'hFE;
					spi_wren <= 1;
				end else if (idlecount < 2097150) begin
					idlecount <= idlecount +1;
			   end else if (idlecount == 2097151) begin
					pulsewidth[0] <= 0;
					pulsewidth[1] <= 0;
					pulsewidth[2] <= 0;
					pulsewidth[3] <= 0;
				end
			end
			STARTUP : begin
				cmdpointer <= 0;
				if (spi_di_req) begin
					//spi_di <= 'hFE;
					//spi_wren <= 1;
				end
				if (spi_do_valid) begin
					crc_in2 <= 'hFE;
					crc_en2 <= 1;
					crc_in <= spi_do;
					crc_en <= 1;
					if (spi_do == 'h01)
						next = CMD01;
					else if (spi_do == 'h02)
						next = CMD02;
					else next = COOLDOWN;
				end
			end
			CMD01 : begin
				if (spi_di_req) begin
					case (cmdpointer)
						0 :  begin
								spi_di <= position[0][31:24];
								pos_buf <= position[0][23:0];
							end
						1 :  spi_di <= pos_buf[23:16];
						2 :  spi_di <= pos_buf[15:8];
						3 :  spi_di <= pos_buf[7:0];
						4 :  begin 
								spi_di <= position[1][31:24];
								pos_buf <= position[1][23:0];
							end
						5 :  spi_di <= pos_buf[23:16];
						6 :  spi_di <= pos_buf[15:8];
						7 :  spi_di <= pos_buf[7:0];
						8 :  begin 
								spi_di <= position[2][31:24];
								pos_buf <= position[2][23:0];
							end
						9 :  spi_di <= pos_buf[23:16];
						10:  spi_di <= pos_buf[15:8];
						11:  spi_di <= pos_buf[7:0];
						12:  begin 
								spi_di <= position[3][31:24];
								pos_buf <= position[3][23:0];
							end
						13:  spi_di <= pos_buf[23:16];
						14:  spi_di <= pos_buf[15:8];
						15:  spi_di <= pos_buf[7:0];
						16:  spi_di <= gpi_d[15:8]; // i01h
						17:  spi_di <= gpi_d[7:0]; // i01l
						18:  spi_di <= gpo[15:8]; // io2h
						19:  spi_di <= gpo[7:0]; // io2l
						20:  spi_di <= 'hB1; // drvh     ERR TWARN STALL STALLW
						21:  spi_di <= 'hB2; // drvl 
						22:  spi_di <= crc_out2[15:8];
						23:  spi_di <= crc_out2[7:0];
						24:  spi_di <= crc_ok;
						default: spi_di <= 'hFE;
					endcase
					spi_wren <= 1;
					next = CMD01_2;
				end
			//   |
			// 01CA  pw1 pw2 pw3 pw4  io1 io2   pwm1 pwm3  crc16  16x0       32x0 	8x0
			// CAFE    pos1    pos2    pos3        pos4     io1 io2     drv  crc16 crcok(FF)
			//      |
			end
			CMD01_2: begin
					if (spi_do_valid) begin
						if (cmdpointer < 22) begin
							crc_in2 <= spi_di;
							crc_en2 <= 1;
						end
						if (cmdpointer < 19) begin
							inbuf[151:8] <= inbuf[143:0];
							inbuf[7:0] <= spi_do;
						end
						if (cmdpointer < 17) begin
							crc_in <= spi_do;
							crc_en <= 1;
						end
						if (cmdpointer == 19) begin
							if (crc_out == inbuf[15:0])
								crc_ok <= 'hFF;
						end
						
						if (cmdpointer < 24) begin
							next = CMD01;
							cmdpointer <= cmdpointer +1;
						end else begin
							if (crc_ok[0] ==  1)
								next = CMD01_EXEC1;
							else next = COOLDOWN;
						end 
					end
				end
			CMD01_EXEC1: begin
					// pwm2 = inbuf[31:16]
					// pwm1 = inbuf[47:32]
					// io2 = inbuf[63:48]
					// io1 = inbuf[79:64]
			      pulsewidth[3] <= inbuf[95:80];
					pulsewidth[2] <= inbuf[111:96];
					pulsewidth[1] <= inbuf[127:112];
					pulsewidth[0] <= inbuf[143:128];
					gpo <= inbuf[79:64];
					// gpo2 <= inbuf[63:48];
					// gap 47:40
					enable[3] <= inbuf[35]; // enable 39:32
					enable[2] <= inbuf[34];
					enable[1] <= inbuf[33];
					enable[0] <= inbuf[32];
					// pwm2 31:16
					next = COOLDOWN;
			end
			CMD02: begin
				//  .  .    ....   ..    ..   .... ...
				// 02 w+adr data  crc16  16x0 32x0 24x0
				// CAFE   32x0       32x0     data crc16 crcok
				//  . .   ....       ....     ....  ...
					if (spi_di_req) begin
						case (cmdpointer)
							0 :  spi_di <= 0;
							1 :  spi_di <= 0;
							2 :  spi_di <= 0;
							3 :  spi_di <= 0;
							4 :  spi_di <= 0;
							5 :  spi_di <= 0;
							6 :  spi_di <= 0;
							7 :  spi_di <= 0;
							8 :  spi_di <= douta[31:24];
							9 :  spi_di <= douta[23:16];
							10:  spi_di <= douta[15:8];
							11:  spi_di <= douta[7:0];
							12:  spi_di <= crc_out2[15:8];
							13:  spi_di <= crc_out2[7:0];
							14:  spi_di <= crc_ok;
							default: spi_di <= 0;
						endcase
						spi_wren <= 1;
						next = CMD02_2;
					end
				end
			CMD02_2: begin
					if (spi_do_valid) begin
						if (cmdpointer < 12) begin
							crc_in2 <= spi_di;
							crc_en2 <= 1;
						end
						if (cmdpointer < 7) begin
							inbuf[151:8] <= inbuf[143:0];
							inbuf[7:0] <= spi_do;
						end
						if (cmdpointer < 5) begin
							crc_in <= spi_do;
							crc_en <= 1;
						end
						if (cmdpointer == 0) begin
							addra[7:2] <= spi_do[5:0];
						end
						if (cmdpointer == 7) begin
							if (crc_out == inbuf[15:0]) begin
								crc_ok <= 'hFF;
								if (inbuf[55] == 1) begin
									dina <= inbuf[47:16];
									wea <= 'b1111;
								end
							end
							
						end
						if (cmdpointer == 8) begin
							wea <= 'b0000;
						end
						if (cmdpointer < 14) begin
							next = CMD02;
							cmdpointer <= cmdpointer +1;
						end else begin
							//if (crc_ok[0])
								next = COOLDOWN;
							//else next = COOLDOWN;
						end 
					end
				end
			COOLDOWN : begin
				if (spi_di_req == 1) begin
					spi_di <= 'hCA;
					spi_wren <= 1;
					//if (spi_wr_ack)
					   next = COOLDOWN2;
				end
			end
			COOLDOWN2 : begin
					//if (scsn == 1)
					//	next = IDLE;
				 end
			default : next = RESET;
		endcase
	end
	state = next;
	if (scsn == 1) begin
			state = IDLE;
	end
	
end

    
    
endmodule


//-----------------------------------------------------------------------------
// Copyright (C) 2009 OutputLogic.com 
// This source file may be used and distributed without restriction 
// provided that this copyright statement is not removed from the file 
// and that any derivative work contains the original copyright notice 
// and the associated disclaimer. 
// 
// THIS SOURCE FILE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS 
// OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED	
// WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE. 
//-----------------------------------------------------------------------------
// CRC module for data[7:0] ,   crc[31:0]=1+x^1+x^2+x^4+x^5+x^7+x^8+x^10+x^11+x^12+x^16+x^22+x^23+x^26+x^32;
//-----------------------------------------------------------------------------
module crc(
  input [7:0] data_in,
  input crc_en,
  output [15:0] crc_out,
  input rst,
  input clk);
  
  reg [31:0] lfsr_q,lfsr_c;
  wire[7:0] din;
  
  
  assign din[0] = data_in[7];
  assign din[1] = data_in[6];
  assign din[2] = data_in[5];
  assign din[3] = data_in[4];
  assign din[4] = data_in[3];
  assign din[5] = data_in[2];
  assign din[6] = data_in[1];
  assign din[7] = data_in[0];
  
  assign crc_out[0] = ~lfsr_q[15];
  assign crc_out[1] = ~lfsr_q[14];
  assign crc_out[2] = ~lfsr_q[13];
  assign crc_out[3] = ~lfsr_q[12];
  assign crc_out[4] = ~lfsr_q[11];
  assign crc_out[5] = ~lfsr_q[10];
  assign crc_out[6] = ~lfsr_q[9];
  assign crc_out[7] = ~lfsr_q[8];
  assign crc_out[8] = ~lfsr_q[7];
  assign crc_out[9] = ~lfsr_q[6];
  assign crc_out[10] = ~lfsr_q[5];
  assign crc_out[11] = ~lfsr_q[4];
  assign crc_out[12] = ~lfsr_q[3];
  assign crc_out[13] = ~lfsr_q[2];
  assign crc_out[14] = ~lfsr_q[1];
  assign crc_out[15] = ~lfsr_q[0];
  
  
  always @(*) begin
    lfsr_c[0] = lfsr_q[24] ^ lfsr_q[30] ^ din[0] ^ din[6];
    lfsr_c[1] = lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[30] ^ lfsr_q[31] ^ din[0] ^ din[1] ^ din[6] ^ din[7];
    lfsr_c[2] = lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[30] ^ lfsr_q[31] ^ din[0] ^ din[1] ^ din[2] ^ din[6] ^ din[7];
    lfsr_c[3] = lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[31] ^ din[1] ^ din[2] ^ din[3] ^ din[7];
    lfsr_c[4] = lfsr_q[24] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[28] ^ lfsr_q[30] ^ din[0] ^ din[2] ^ din[3] ^ din[4] ^ din[6];
    lfsr_c[5] = lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[27] ^ lfsr_q[28] ^ lfsr_q[29] ^ lfsr_q[30] ^ lfsr_q[31] ^ din[0] ^ din[1] ^ din[3] ^ din[4] ^ din[5] ^ din[6] ^ din[7];
    lfsr_c[6] = lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[28] ^ lfsr_q[29] ^ lfsr_q[30] ^ lfsr_q[31] ^ din[1] ^ din[2] ^ din[4] ^ din[5] ^ din[6] ^ din[7];
    lfsr_c[7] = lfsr_q[24] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[29] ^ lfsr_q[31] ^ din[0] ^ din[2] ^ din[3] ^ din[5] ^ din[7];
    lfsr_c[8] = lfsr_q[0] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[27] ^ lfsr_q[28] ^ din[0] ^ din[1] ^ din[3] ^ din[4];
    lfsr_c[9] = lfsr_q[1] ^ lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[28] ^ lfsr_q[29] ^ din[1] ^ din[2] ^ din[4] ^ din[5];
    lfsr_c[10] = lfsr_q[2] ^ lfsr_q[24] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[29] ^ din[0] ^ din[2] ^ din[3] ^ din[5];
    lfsr_c[11] = lfsr_q[3] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[27] ^ lfsr_q[28] ^ din[0] ^ din[1] ^ din[3] ^ din[4];
    lfsr_c[12] = lfsr_q[4] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[28] ^ lfsr_q[29] ^ lfsr_q[30] ^ din[0] ^ din[1] ^ din[2] ^ din[4] ^ din[5] ^ din[6];
    lfsr_c[13] = lfsr_q[5] ^ lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[29] ^ lfsr_q[30] ^ lfsr_q[31] ^ din[1] ^ din[2] ^ din[3] ^ din[5] ^ din[6] ^ din[7];
    lfsr_c[14] = lfsr_q[6] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[28] ^ lfsr_q[30] ^ lfsr_q[31] ^ din[2] ^ din[3] ^ din[4] ^ din[6] ^ din[7];
    lfsr_c[15] = lfsr_q[7] ^ lfsr_q[27] ^ lfsr_q[28] ^ lfsr_q[29] ^ lfsr_q[31] ^ din[3] ^ din[4] ^ din[5] ^ din[7];
    lfsr_c[16] = lfsr_q[8] ^ lfsr_q[24] ^ lfsr_q[28] ^ lfsr_q[29] ^ din[0] ^ din[4] ^ din[5];
    lfsr_c[17] = lfsr_q[9] ^ lfsr_q[25] ^ lfsr_q[29] ^ lfsr_q[30] ^ din[1] ^ din[5] ^ din[6];
    lfsr_c[18] = lfsr_q[10] ^ lfsr_q[26] ^ lfsr_q[30] ^ lfsr_q[31] ^ din[2] ^ din[6] ^ din[7];
    lfsr_c[19] = lfsr_q[11] ^ lfsr_q[27] ^ lfsr_q[31] ^ din[3] ^ din[7];
    lfsr_c[20] = lfsr_q[12] ^ lfsr_q[28] ^ din[4];
    lfsr_c[21] = lfsr_q[13] ^ lfsr_q[29] ^ din[5];
    lfsr_c[22] = lfsr_q[14] ^ lfsr_q[24] ^ din[0];
    lfsr_c[23] = lfsr_q[15] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[30] ^ din[0] ^ din[1] ^ din[6];
    lfsr_c[24] = lfsr_q[16] ^ lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[31] ^ din[1] ^ din[2] ^ din[7];
    lfsr_c[25] = lfsr_q[17] ^ lfsr_q[26] ^ lfsr_q[27] ^ din[2] ^ din[3];
    lfsr_c[26] = lfsr_q[18] ^ lfsr_q[24] ^ lfsr_q[27] ^ lfsr_q[28] ^ lfsr_q[30] ^ din[0] ^ din[3] ^ din[4] ^ din[6];
    lfsr_c[27] = lfsr_q[19] ^ lfsr_q[25] ^ lfsr_q[28] ^ lfsr_q[29] ^ lfsr_q[31] ^ din[1] ^ din[4] ^ din[5] ^ din[7];
    lfsr_c[28] = lfsr_q[20] ^ lfsr_q[26] ^ lfsr_q[29] ^ lfsr_q[30] ^ din[2] ^ din[5] ^ din[6];
    lfsr_c[29] = lfsr_q[21] ^ lfsr_q[27] ^ lfsr_q[30] ^ lfsr_q[31] ^ din[3] ^ din[6] ^ din[7];
    lfsr_c[30] = lfsr_q[22] ^ lfsr_q[28] ^ lfsr_q[31] ^ din[4] ^ din[7];
    lfsr_c[31] = lfsr_q[23] ^ lfsr_q[29] ^ din[5];

  end // always

  always @(posedge clk, posedge rst) begin
    if(rst) begin
      lfsr_q <= {32{1'b1}};
    end
    else begin
      lfsr_q <= crc_en ? lfsr_c : lfsr_q;
    end
  end // always
endmodule // crc



module Debouncer (
    input clk,
    input PB,  // "PB" is the glitchy, asynchronous to clk, active low push-button signal

    // from which we make three outputs, all synchronous to the clock
    output reg PB_state  // 1 as long as the push-button is active (down)
);

// First use two flip-flops to synchronize the PB signal the "clk" clock domain
reg PB_sync_0;  always @(posedge clk) PB_sync_0 <= ~PB;  // invert PB to make PB_sync_0 active high
reg PB_sync_1;  always @(posedge clk) PB_sync_1 <= PB_sync_0;

// Next declare a 16-bits counter
reg [12:0] PB_cnt;

// When the push-button is pushed or released, we increment the counter
// The counter has to be maxed out before we decide that the push-button state has changed

wire PB_idle = (PB_state==PB_sync_1);
wire PB_cnt_max = &PB_cnt;	// true when all bits of PB_cnt are 1's

always @(posedge clk)
if(PB_idle)
    PB_cnt <= 0;  // nothing's going on
else
begin
    PB_cnt <= PB_cnt + 'd1;  // something's going on, increment the counter
    if(PB_cnt_max) PB_state <= ~PB_state;  // if the counter is maxed out, PB changed!
end
endmodule // Debounce