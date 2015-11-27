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


module TMC_CONTROLLER(clk,resetn, sclk,csn,mosi,miso, step,dir,enn, wea,web, addra,addrb, dina, dinb, douta, doutb, ena,enb, clka,clkb, reseta,resetb, ssclk, scsn, smiso, smosi);
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
    
    genvar i;  
    generate  
    for (i=0; i < N_INT; i=i+1)  
      begin: gen_code_label  
       stepgenerator stepgen (.clk(clk),.resetn(resetn),.pause(pause[i]),.enable(enable[i]),.pulsewidth(pulsewidth[i]),.position(position[i]),.step(step[i]),.dir(dir[i]),.enn(enn[i]));
      end  
    endgenerate  
    
	 
	 
	 
reg[7:0] spi_di;
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

crc crc(crc_in,crc_en,crc_out,crc_rst,clk);


always @(posedge(clk)) begin
	
	next = state;
	if (!resetn)  begin
		next = RESET;
		delay <= 0;
		spi_wren <= 0;
		crc_rst <= 1;
		crc_en <= 0;
		crc_in <= 0;
		ena <= 1;
		wea <= 'b0000;
		for (j=0; j < N_INT; j=j+1) begin
			pulsewidth[j] <= 0;
			enable[j] <= 0;
			pause[j] <= 0;
		end
	end else if (delay > 0)
		delay <= delay -1;
	else begin 
		spi_wren <= 0;
		crc_en <= 0;
		case (state)
			RESET: begin
				spi_di <= 'hCA;
				spi_wren <= 1;
				if (spi_wr_ack) begin
					next = IDLE;
				end
			end
			IDLE : begin
				if (scsn == 0) begin
					next = STARTUP;
					crc_rst <= 0;
					crc_ok <= 0;
				end
			end
			STARTUP : begin
				cmdpointer <= 0;
				if (spi_di_req) begin
					spi_di <= 'hFE;
					spi_wren <= 1;
				end
				if (spi_do_valid) begin
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
						0 :  spi_di <= position[0][31:24];
						1 :  spi_di <= position[0][23:16];
						2 :  spi_di <= position[0][15:8];
						3 :  spi_di <= position[0][7:0];
						4 :  spi_di <= position[1][31:24];
						5 :  spi_di <= position[1][23:16];
						6 :  spi_di <= position[1][15:8];
						7 :  spi_di <= position[1][7:0];
						8 :  spi_di <= position[2][31:24];
						9 :  spi_di <= position[2][23:16];
						10:  spi_di <= position[2][15:8];
						11:  spi_di <= position[2][7:0];
						12:  spi_di <= position[3][31:24];
						13:  spi_di <= position[3][23:16];
						14:  spi_di <= position[3][15:8];
						15:  spi_di <= position[3][7:0];
						16:  spi_di <= 'hA0; // i01h
						17:  spi_di <= 'hA1; // i01l
						18:  spi_di <= 'hA2; // io2h
						19:  spi_di <= 'hA3; // io2l
						20:  spi_di <= 'hB1; // drvh     ERR TWARN STALL STALLW
						21:  spi_di <= 'hB2; // drvl 
						22:  spi_di <= crc_out[15:8];
						23:  spi_di <= crc_out[7:0];
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
							//if (crc_ok[0])
								next = CMD01_EXEC1;
							//else next = COOLDOWN;
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
					enable[3] <= 1;
					enable[2] <= 1;
					enable[1] <= 1;
					enable[0] <= 1;
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
							12:  spi_di <= crc_out[15:8];
							13:  spi_di <= crc_out[7:0];
							14:  spi_di <= crc_ok;
							default: spi_di <= 0;
						endcase
						spi_wren <= 1;
						next = CMD02_2;
					end
				end
			CMD02_2: begin
					if (spi_do_valid) begin
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
							//if (crc_out == inbuf[15:0]) begin
								crc_ok <= 'hFF;
								if (inbuf[55] == 1) begin
									dina <= inbuf[47:16];
									wea <= 'b1111;
								end
							//end
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
					if (scsn == 1)
						next = IDLE;
				end
			default : next = RESET;
		endcase
	end
	state = next;
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
// CRC module for data[7:0] ,   crc[15:0]=1+x^2+x^15+x^16;
//-----------------------------------------------------------------------------
module crc(
  input [7:0] data_in,
  input crc_en,
  output [15:0] crc_out,
  input rst,
  input clk);

  reg [15:0] lfsr_q,lfsr_c;

  assign crc_out = lfsr_q;

  always @(*) begin
    lfsr_c[0] = lfsr_q[8] ^ lfsr_q[9] ^ lfsr_q[10] ^ lfsr_q[11] ^ lfsr_q[12] ^ lfsr_q[13] ^ lfsr_q[14] ^ lfsr_q[15] ^ data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[4] ^ data_in[5] ^ data_in[6] ^ data_in[7];
    lfsr_c[1] = lfsr_q[9] ^ lfsr_q[10] ^ lfsr_q[11] ^ lfsr_q[12] ^ lfsr_q[13] ^ lfsr_q[14] ^ lfsr_q[15] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[4] ^ data_in[5] ^ data_in[6] ^ data_in[7];
    lfsr_c[2] = lfsr_q[8] ^ lfsr_q[9] ^ data_in[0] ^ data_in[1];
    lfsr_c[3] = lfsr_q[9] ^ lfsr_q[10] ^ data_in[1] ^ data_in[2];
    lfsr_c[4] = lfsr_q[10] ^ lfsr_q[11] ^ data_in[2] ^ data_in[3];
    lfsr_c[5] = lfsr_q[11] ^ lfsr_q[12] ^ data_in[3] ^ data_in[4];
    lfsr_c[6] = lfsr_q[12] ^ lfsr_q[13] ^ data_in[4] ^ data_in[5];
    lfsr_c[7] = lfsr_q[13] ^ lfsr_q[14] ^ data_in[5] ^ data_in[6];
    lfsr_c[8] = lfsr_q[0] ^ lfsr_q[14] ^ lfsr_q[15] ^ data_in[6] ^ data_in[7];
    lfsr_c[9] = lfsr_q[1] ^ lfsr_q[15] ^ data_in[7];
    lfsr_c[10] = lfsr_q[2];
    lfsr_c[11] = lfsr_q[3];
    lfsr_c[12] = lfsr_q[4];
    lfsr_c[13] = lfsr_q[5];
    lfsr_c[14] = lfsr_q[6];
    lfsr_c[15] = lfsr_q[7] ^ lfsr_q[8] ^ lfsr_q[9] ^ lfsr_q[10] ^ lfsr_q[11] ^ lfsr_q[12] ^ lfsr_q[13] ^ lfsr_q[14] ^ lfsr_q[15] ^ data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[4] ^ data_in[5] ^ data_in[6] ^ data_in[7];

  end // always

  always @(posedge clk, posedge rst) begin
    if(rst) begin
      lfsr_q <= {16{1'b1}};
    end
    else begin
      lfsr_q <= crc_en ? lfsr_c : lfsr_q;
    end
  end // always
endmodule // crc