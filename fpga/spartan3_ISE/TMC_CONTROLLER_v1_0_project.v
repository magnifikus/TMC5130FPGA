// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (win64) Build 1215546 Mon Apr 27 19:22:08 MDT 2015
// Date        : Thu Nov 26 16:25:45 2015
// Host        : MoritzNB running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog D:/Data/zynq/ip_repo/TMC_CONTROLLER_IP/src/TMC_CONTROLLER_v1_0_project.v
// Design      : TMC_CONTROLLER
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SPI_MASTER_WRAP
   (csn_OBUF,
    sclk_OBUF,
    wren_i_reg,
    \di_i_reg[39] ,
    we_reg,
    \din_reg[31] ,
    D,
    \p_rchip_reg[7] ,
    \p_chip_reg[7] ,
    E,
    \di_i_reg[0] ,
    \p_rchip_reg[0] ,
    \addr_reg[0] ,
    \din_reg[0] ,
    \p_chip_reg[0] ,
    \p_reg_reg[0] ,
    \din_reg[31]_0 ,
    mosi_OBUF,
    clkb_OBUF_BUFG,
    \delay_reg[6] ,
    wren_i_reg_0,
    out,
    web_OBUF,
    miso_IBUF,
    \p_reg_reg[4] ,
    \p_reg_reg[1] ,
    \p_reg_reg[5] ,
    \p_reg_reg[7] ,
    \FSM_onehot_state_reg[7] ,
    doutb_IBUF,
    \memreal_reg[0][1] ,
    \FSM_onehot_state_reg[5] ,
    \p_reg_reg[7]_0 ,
    \FSM_onehot_state_reg[10] ,
    \FSM_onehot_state_reg[2] ,
    \p_rchip_reg[6] ,
    \FSM_onehot_state_reg[11] ,
    \p_rchip_reg[6]_0 ,
    \FSM_onehot_state_reg[2]_0 ,
    Q,
    \memreal_reg[0][4] ,
    \p_chip_reg[3] ,
    \FSM_onehot_state_reg[11]_0 ,
    \FSM_onehot_state_reg[9] ,
    \FSM_onehot_state_reg[2]_1 ,
    \memreal_reg[0][2] ,
    we1,
    \p_reg_reg[6] ,
    \FSM_onehot_state_reg[10]_0 ,
    \t_chip_reg[0] ,
    \p_rchip_reg[7]_0 ,
    \p_rreg_reg[7] ,
    \p_rreg_reg[1] ,
    \p_rreg_reg[4] ,
    \memreal_reg[0][0] ,
    \memreal_reg[0][1]_0 ,
    \p_rchip_reg[3] ,
    \p_chip_reg[7]_0 ,
    \numchips_reg[6] ,
    \p_chip_reg[6] ,
    \numchips_reg[5] ,
    \p_chip_reg[5] ,
    \numchips_reg[4] ,
    \p_chip_reg[4] ,
    \numchips_reg[3] ,
    \FSM_onehot_state_reg[1] ,
    \p_chip_reg[1] ,
    \p_chip_reg[5]_0 ,
    \p_chip_reg[3]_0 ,
    \numchips_reg[2] ,
    \p_chip_reg[2] ,
    \numchips_reg[1] ,
    \FSM_onehot_state_reg[1]_0 ,
    \p_chip_reg[1]_0 ,
    \numchips_reg[0] ,
    \p_chip_reg[5]_1 ,
    \numchips_reg[1]_0 ,
    \p_rchip_reg[7]_1 ,
    \p_rchip_reg[6]_1 ,
    \p_rchip_reg[5] ,
    \p_rchip_reg[4] ,
    \FSM_onehot_state_reg[7]_0 ,
    \p_rchip_reg[3]_0 ,
    \p_rchip_reg[2] ,
    \p_rchip_reg[0]_0 ,
    \p_rchip_reg[1] ,
    \p_rchip_reg[5]_0 ,
    \FSM_onehot_state_reg[12] ,
    \p_rchip_reg[2]_0 ,
    \p_rchip_reg[0]_1 ,
    \p_rchip_reg[5]_1 ,
    \FSM_onehot_state_reg[1]_1 ,
    \FSM_onehot_state_reg[8] ,
    \FSM_onehot_state_reg[1]_2 ,
    \p_chip_reg[1]_1 ,
    \FSM_onehot_state_reg[1]_3 ,
    \p_chip_reg[1]_2 ,
    \FSM_onehot_state_reg[1]_4 ,
    \p_chip_reg[5]_2 ,
    \FSM_onehot_state_reg[1]_5 ,
    \p_chip_reg[6]_0 ,
    \FSM_onehot_state_reg[1]_6 ,
    \FSM_onehot_state_reg[4] ,
    \FSM_onehot_state_reg[0] ,
    \delay_reg[6]_0 ,
    \FSM_onehot_state_reg[7]_1 ,
    \p_chip_reg[4]_0 ,
    \di_i_reg[39]_0 );
  output csn_OBUF;
  output sclk_OBUF;
  output wren_i_reg;
  output \di_i_reg[39] ;
  output we_reg;
  output \din_reg[31] ;
  output [10:0]D;
  output [7:0]\p_rchip_reg[7] ;
  output [7:0]\p_chip_reg[7] ;
  output [0:0]E;
  output \di_i_reg[0] ;
  output [0:0]\p_rchip_reg[0] ;
  output [0:0]\addr_reg[0] ;
  output \din_reg[0] ;
  output [0:0]\p_chip_reg[0] ;
  output [0:0]\p_reg_reg[0] ;
  output [31:0]\din_reg[31]_0 ;
  output mosi_OBUF;
  input clkb_OBUF_BUFG;
  input \delay_reg[6] ;
  input wren_i_reg_0;
  input [12:0]out;
  input [0:0]web_OBUF;
  input miso_IBUF;
  input \p_reg_reg[4] ;
  input \p_reg_reg[1] ;
  input \p_reg_reg[5] ;
  input \p_reg_reg[7] ;
  input \FSM_onehot_state_reg[7] ;
  input [1:0]doutb_IBUF;
  input \memreal_reg[0][1] ;
  input \FSM_onehot_state_reg[5] ;
  input \p_reg_reg[7]_0 ;
  input \FSM_onehot_state_reg[10] ;
  input \FSM_onehot_state_reg[2] ;
  input \p_rchip_reg[6] ;
  input \FSM_onehot_state_reg[11] ;
  input \p_rchip_reg[6]_0 ;
  input \FSM_onehot_state_reg[2]_0 ;
  input [1:0]Q;
  input \memreal_reg[0][4] ;
  input \p_chip_reg[3] ;
  input \FSM_onehot_state_reg[11]_0 ;
  input \FSM_onehot_state_reg[9] ;
  input \FSM_onehot_state_reg[2]_1 ;
  input \memreal_reg[0][2] ;
  input we1;
  input \p_reg_reg[6] ;
  input \FSM_onehot_state_reg[10]_0 ;
  input \t_chip_reg[0] ;
  input [7:0]\p_rchip_reg[7]_0 ;
  input [0:0]\p_rreg_reg[7] ;
  input \p_rreg_reg[1] ;
  input \p_rreg_reg[4] ;
  input \memreal_reg[0][0] ;
  input \memreal_reg[0][1]_0 ;
  input \p_rchip_reg[3] ;
  input \p_chip_reg[7]_0 ;
  input \numchips_reg[6] ;
  input \p_chip_reg[6] ;
  input \numchips_reg[5] ;
  input \p_chip_reg[5] ;
  input \numchips_reg[4] ;
  input \p_chip_reg[4] ;
  input \numchips_reg[3] ;
  input \FSM_onehot_state_reg[1] ;
  input \p_chip_reg[1] ;
  input \p_chip_reg[5]_0 ;
  input \p_chip_reg[3]_0 ;
  input \numchips_reg[2] ;
  input \p_chip_reg[2] ;
  input \numchips_reg[1] ;
  input \FSM_onehot_state_reg[1]_0 ;
  input \p_chip_reg[1]_0 ;
  input \numchips_reg[0] ;
  input [5:0]\p_chip_reg[5]_1 ;
  input [1:0]\numchips_reg[1]_0 ;
  input \p_rchip_reg[7]_1 ;
  input \p_rchip_reg[6]_1 ;
  input \p_rchip_reg[5] ;
  input \p_rchip_reg[4] ;
  input \FSM_onehot_state_reg[7]_0 ;
  input \p_rchip_reg[3]_0 ;
  input \p_rchip_reg[2] ;
  input \p_rchip_reg[0]_0 ;
  input \p_rchip_reg[1] ;
  input \p_rchip_reg[5]_0 ;
  input \FSM_onehot_state_reg[12] ;
  input \p_rchip_reg[2]_0 ;
  input \p_rchip_reg[0]_1 ;
  input \p_rchip_reg[5]_1 ;
  input \FSM_onehot_state_reg[1]_1 ;
  input \FSM_onehot_state_reg[8] ;
  input \FSM_onehot_state_reg[1]_2 ;
  input \p_chip_reg[1]_1 ;
  input \FSM_onehot_state_reg[1]_3 ;
  input \p_chip_reg[1]_2 ;
  input \FSM_onehot_state_reg[1]_4 ;
  input \p_chip_reg[5]_2 ;
  input \FSM_onehot_state_reg[1]_5 ;
  input \p_chip_reg[6]_0 ;
  input \FSM_onehot_state_reg[1]_6 ;
  input \FSM_onehot_state_reg[4] ;
  input \FSM_onehot_state_reg[0] ;
  input \delay_reg[6]_0 ;
  input \FSM_onehot_state_reg[7]_1 ;
  input \p_chip_reg[4]_0 ;
  input [39:0]\di_i_reg[39]_0 ;

  wire [10:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[10] ;
  wire \FSM_onehot_state_reg[10]_0 ;
  wire \FSM_onehot_state_reg[11] ;
  wire \FSM_onehot_state_reg[11]_0 ;
  wire \FSM_onehot_state_reg[12] ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg[1]_2 ;
  wire \FSM_onehot_state_reg[1]_3 ;
  wire \FSM_onehot_state_reg[1]_4 ;
  wire \FSM_onehot_state_reg[1]_5 ;
  wire \FSM_onehot_state_reg[1]_6 ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire \FSM_onehot_state_reg[4] ;
  wire \FSM_onehot_state_reg[5] ;
  wire \FSM_onehot_state_reg[7] ;
  wire \FSM_onehot_state_reg[7]_0 ;
  wire \FSM_onehot_state_reg[7]_1 ;
  wire \FSM_onehot_state_reg[8] ;
  wire \FSM_onehot_state_reg[9] ;
  wire [1:0]Q;
  wire [0:0]\addr_reg[0] ;
  wire clkb_OBUF_BUFG;
  wire csn_OBUF;
  wire \delay_reg[6] ;
  wire \delay_reg[6]_0 ;
  wire \di_i_reg[0] ;
  wire \di_i_reg[39] ;
  wire [39:0]\di_i_reg[39]_0 ;
  wire \din_reg[0] ;
  wire \din_reg[31] ;
  wire [31:0]\din_reg[31]_0 ;
  wire [1:0]doutb_IBUF;
  wire \memreal_reg[0][0] ;
  wire \memreal_reg[0][1] ;
  wire \memreal_reg[0][1]_0 ;
  wire \memreal_reg[0][2] ;
  wire \memreal_reg[0][4] ;
  wire miso_IBUF;
  wire mosi_OBUF;
  wire \numchips_reg[0] ;
  wire \numchips_reg[1] ;
  wire [1:0]\numchips_reg[1]_0 ;
  wire \numchips_reg[2] ;
  wire \numchips_reg[3] ;
  wire \numchips_reg[4] ;
  wire \numchips_reg[5] ;
  wire \numchips_reg[6] ;
  wire [12:0]out;
  wire [0:0]\p_chip_reg[0] ;
  wire \p_chip_reg[1] ;
  wire \p_chip_reg[1]_0 ;
  wire \p_chip_reg[1]_1 ;
  wire \p_chip_reg[1]_2 ;
  wire \p_chip_reg[2] ;
  wire \p_chip_reg[3] ;
  wire \p_chip_reg[3]_0 ;
  wire \p_chip_reg[4] ;
  wire \p_chip_reg[4]_0 ;
  wire \p_chip_reg[5] ;
  wire \p_chip_reg[5]_0 ;
  wire [5:0]\p_chip_reg[5]_1 ;
  wire \p_chip_reg[5]_2 ;
  wire \p_chip_reg[6] ;
  wire \p_chip_reg[6]_0 ;
  wire [7:0]\p_chip_reg[7] ;
  wire \p_chip_reg[7]_0 ;
  wire [0:0]\p_rchip_reg[0] ;
  wire \p_rchip_reg[0]_0 ;
  wire \p_rchip_reg[0]_1 ;
  wire \p_rchip_reg[1] ;
  wire \p_rchip_reg[2] ;
  wire \p_rchip_reg[2]_0 ;
  wire \p_rchip_reg[3] ;
  wire \p_rchip_reg[3]_0 ;
  wire \p_rchip_reg[4] ;
  wire \p_rchip_reg[5] ;
  wire \p_rchip_reg[5]_0 ;
  wire \p_rchip_reg[5]_1 ;
  wire \p_rchip_reg[6] ;
  wire \p_rchip_reg[6]_0 ;
  wire \p_rchip_reg[6]_1 ;
  wire [7:0]\p_rchip_reg[7] ;
  wire [7:0]\p_rchip_reg[7]_0 ;
  wire \p_rchip_reg[7]_1 ;
  wire [0:0]\p_reg_reg[0] ;
  wire \p_reg_reg[1] ;
  wire \p_reg_reg[4] ;
  wire \p_reg_reg[5] ;
  wire \p_reg_reg[6] ;
  wire \p_reg_reg[7] ;
  wire \p_reg_reg[7]_0 ;
  wire \p_rreg_reg[1] ;
  wire \p_rreg_reg[4] ;
  wire [0:0]\p_rreg_reg[7] ;
  wire sclk_OBUF;
  wire \t_chip_reg[0] ;
  wire we1;
  wire we_reg;
  wire [0:0]web_OBUF;
  wire wren_i_reg;
  wire wren_i_reg_0;

  spi_master spim
       (.D(D),
        .E(E),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state_reg[0] ),
        .\FSM_onehot_state_reg[10] (\FSM_onehot_state_reg[10] ),
        .\FSM_onehot_state_reg[10]_0 (\FSM_onehot_state_reg[10]_0 ),
        .\FSM_onehot_state_reg[11] (\FSM_onehot_state_reg[11] ),
        .\FSM_onehot_state_reg[11]_0 (\FSM_onehot_state_reg[11]_0 ),
        .\FSM_onehot_state_reg[12] (\FSM_onehot_state_reg[12] ),
        .\FSM_onehot_state_reg[1] (\FSM_onehot_state_reg[1] ),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1]_0 ),
        .\FSM_onehot_state_reg[1]_1 (\FSM_onehot_state_reg[1]_1 ),
        .\FSM_onehot_state_reg[1]_2 (\FSM_onehot_state_reg[1]_2 ),
        .\FSM_onehot_state_reg[1]_3 (\FSM_onehot_state_reg[1]_3 ),
        .\FSM_onehot_state_reg[1]_4 (\FSM_onehot_state_reg[1]_4 ),
        .\FSM_onehot_state_reg[1]_5 (\FSM_onehot_state_reg[1]_5 ),
        .\FSM_onehot_state_reg[1]_6 (\FSM_onehot_state_reg[1]_6 ),
        .\FSM_onehot_state_reg[2] (\FSM_onehot_state_reg[2] ),
        .\FSM_onehot_state_reg[2]_0 (\FSM_onehot_state_reg[2]_0 ),
        .\FSM_onehot_state_reg[2]_1 (\FSM_onehot_state_reg[2]_1 ),
        .\FSM_onehot_state_reg[4] (\FSM_onehot_state_reg[4] ),
        .\FSM_onehot_state_reg[5] (\FSM_onehot_state_reg[5] ),
        .\FSM_onehot_state_reg[7] (\FSM_onehot_state_reg[7] ),
        .\FSM_onehot_state_reg[7]_0 (\FSM_onehot_state_reg[7]_0 ),
        .\FSM_onehot_state_reg[7]_1 (\FSM_onehot_state_reg[7]_1 ),
        .\FSM_onehot_state_reg[8] (\FSM_onehot_state_reg[8] ),
        .\FSM_onehot_state_reg[9] (\FSM_onehot_state_reg[9] ),
        .Q(Q),
        .\addr_reg[0] (\addr_reg[0] ),
        .clkb_OBUF_BUFG(clkb_OBUF_BUFG),
        .csn_OBUF(csn_OBUF),
        .\delay_reg[6] (\delay_reg[6] ),
        .\delay_reg[6]_0 (\delay_reg[6]_0 ),
        .\di_i_reg[0] (\di_i_reg[0] ),
        .\di_i_reg[39] (\di_i_reg[39] ),
        .\di_i_reg[39]_0 (\di_i_reg[39]_0 ),
        .\din_reg[0] (\din_reg[0] ),
        .\din_reg[31] (\din_reg[31] ),
        .\din_reg[31]_0 (\din_reg[31]_0 ),
        .doutb_IBUF(doutb_IBUF),
        .\memreal_reg[0][0] (\memreal_reg[0][0] ),
        .\memreal_reg[0][1] (\memreal_reg[0][1] ),
        .\memreal_reg[0][1]_0 (\memreal_reg[0][1]_0 ),
        .\memreal_reg[0][2] (\memreal_reg[0][2] ),
        .\memreal_reg[0][4] (\memreal_reg[0][4] ),
        .miso_IBUF(miso_IBUF),
        .mosi_OBUF(mosi_OBUF),
        .\numchips_reg[0] (\numchips_reg[0] ),
        .\numchips_reg[1] (\numchips_reg[1] ),
        .\numchips_reg[1]_0 (\numchips_reg[1]_0 ),
        .\numchips_reg[2] (\numchips_reg[2] ),
        .\numchips_reg[3] (\numchips_reg[3] ),
        .\numchips_reg[4] (\numchips_reg[4] ),
        .\numchips_reg[5] (\numchips_reg[5] ),
        .\numchips_reg[6] (\numchips_reg[6] ),
        .out(out),
        .\p_chip_reg[0] (\p_chip_reg[0] ),
        .\p_chip_reg[1] (\p_chip_reg[1] ),
        .\p_chip_reg[1]_0 (\p_chip_reg[1]_0 ),
        .\p_chip_reg[1]_1 (\p_chip_reg[1]_1 ),
        .\p_chip_reg[1]_2 (\p_chip_reg[1]_2 ),
        .\p_chip_reg[2] (\p_chip_reg[2] ),
        .\p_chip_reg[3] (\p_chip_reg[3] ),
        .\p_chip_reg[3]_0 (\p_chip_reg[3]_0 ),
        .\p_chip_reg[4] (\p_chip_reg[4] ),
        .\p_chip_reg[4]_0 (\p_chip_reg[4]_0 ),
        .\p_chip_reg[5] (\p_chip_reg[5] ),
        .\p_chip_reg[5]_0 (\p_chip_reg[5]_0 ),
        .\p_chip_reg[5]_1 (\p_chip_reg[5]_1 ),
        .\p_chip_reg[5]_2 (\p_chip_reg[5]_2 ),
        .\p_chip_reg[6] (\p_chip_reg[6] ),
        .\p_chip_reg[6]_0 (\p_chip_reg[6]_0 ),
        .\p_chip_reg[7] (\p_chip_reg[7] ),
        .\p_chip_reg[7]_0 (\p_chip_reg[7]_0 ),
        .\p_rchip_reg[0] (\p_rchip_reg[0] ),
        .\p_rchip_reg[0]_0 (\p_rchip_reg[0]_0 ),
        .\p_rchip_reg[0]_1 (\p_rchip_reg[0]_1 ),
        .\p_rchip_reg[1] (\p_rchip_reg[1] ),
        .\p_rchip_reg[2] (\p_rchip_reg[2] ),
        .\p_rchip_reg[2]_0 (\p_rchip_reg[2]_0 ),
        .\p_rchip_reg[3] (\p_rchip_reg[3] ),
        .\p_rchip_reg[3]_0 (\p_rchip_reg[3]_0 ),
        .\p_rchip_reg[4] (\p_rchip_reg[4] ),
        .\p_rchip_reg[5] (\p_rchip_reg[5] ),
        .\p_rchip_reg[5]_0 (\p_rchip_reg[5]_0 ),
        .\p_rchip_reg[5]_1 (\p_rchip_reg[5]_1 ),
        .\p_rchip_reg[6] (\p_rchip_reg[6] ),
        .\p_rchip_reg[6]_0 (\p_rchip_reg[6]_0 ),
        .\p_rchip_reg[6]_1 (\p_rchip_reg[6]_1 ),
        .\p_rchip_reg[7] (\p_rchip_reg[7] ),
        .\p_rchip_reg[7]_0 (\p_rchip_reg[7]_0 ),
        .\p_rchip_reg[7]_1 (\p_rchip_reg[7]_1 ),
        .\p_reg_reg[0] (\p_reg_reg[0] ),
        .\p_reg_reg[1] (\p_reg_reg[1] ),
        .\p_reg_reg[4] (\p_reg_reg[4] ),
        .\p_reg_reg[5] (\p_reg_reg[5] ),
        .\p_reg_reg[6] (\p_reg_reg[6] ),
        .\p_reg_reg[7] (\p_reg_reg[7] ),
        .\p_reg_reg[7]_0 (\p_reg_reg[7]_0 ),
        .\p_rreg_reg[1] (\p_rreg_reg[1] ),
        .\p_rreg_reg[4] (\p_rreg_reg[4] ),
        .\p_rreg_reg[7] (\p_rreg_reg[7] ),
        .sclk_OBUF(sclk_OBUF),
        .\t_chip_reg[0] (\t_chip_reg[0] ),
        .we1(we1),
        .we_reg(we_reg),
        .web_OBUF(web_OBUF),
        .wren_i_reg(wren_i_reg),
        .wren_i_reg_0(wren_i_reg_0));
endmodule

(* N_INT = "3" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module TMC_CONTROLLER
   (clk,
    resetn,
    sclk,
    csn,
    mosi,
    miso,
    \step[2] ,
    \step[1] ,
    \step[0] ,
    \dir[2] ,
    \dir[1] ,
    \dir[0] ,
    \enn[2] ,
    \enn[1] ,
    \enn[0] ,
    wea,
    web,
    addra,
    addrb,
    dina,
    dinb,
    douta,
    doutb,
    ena,
    enb,
    clka,
    clkb,
    reseta,
    resetb,
    ssclk,
    scsn,
    smiso,
    smosi);
  input clk;
  input resetn;
  output sclk;
  output csn;
  output mosi;
  input miso;
  output \step[2] ;
  output \step[1] ;
  output \step[0] ;
  output \dir[2] ;
  output \dir[1] ;
  output \dir[0] ;
  output \enn[2] ;
  output \enn[1] ;
  output \enn[0] ;
  output [3:0]wea;
  output [3:0]web;
  output [31:0]addra;
  output [31:0]addrb;
  output [31:0]dina;
  output [31:0]dinb;
  input [31:0]douta;
  input [31:0]doutb;
  output ena;
  output enb;
  output clka;
  output clkb;
  output reseta;
  output resetb;
  input ssclk;
  input scsn;
  output smiso;
  input smosi;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]addra;
  wire [31:0]addrb;
  wire [7:2]addrb_OBUF;
  wire clk;
  wire clka;
  wire clkb;
  wire clkb_OBUF;
  wire clkb_OBUF_BUFG;
  wire csn;
  wire csn_OBUF;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]dinb_OBUF;
  wire \dir[0] ;
  wire \dir[1] ;
  wire \dir[2] ;
  wire [31:0]doutb;
  wire [31:0]doutb_IBUF;
  wire ena;
  wire enb;
  wire \enn[0] ;
  wire \enn[1] ;
  wire \enn[2] ;
  wire miso;
  wire miso_IBUF;
  wire mosi;
  wire mosi_OBUF;
  wire reseta;
  wire resetb;
  wire resetb_OBUF;
  wire resetn;
  wire resetn_IBUF;
  wire sclk;
  wire sclk_OBUF;
  wire smiso;
  wire \step[0] ;
  wire \step[1] ;
  wire \step[2] ;
  wire [3:0]wea;
  wire [3:0]web;
  wire [0:0]web_OBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  OBUFT \addra_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(addra[0]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[10]_inst 
       (.I(\<const0> ),
        .O(addra[10]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[11]_inst 
       (.I(\<const0> ),
        .O(addra[11]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[12]_inst 
       (.I(\<const0> ),
        .O(addra[12]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[13]_inst 
       (.I(\<const0> ),
        .O(addra[13]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[14]_inst 
       (.I(\<const0> ),
        .O(addra[14]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[15]_inst 
       (.I(\<const0> ),
        .O(addra[15]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[16]_inst 
       (.I(\<const0> ),
        .O(addra[16]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[17]_inst 
       (.I(\<const0> ),
        .O(addra[17]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[18]_inst 
       (.I(\<const0> ),
        .O(addra[18]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[19]_inst 
       (.I(\<const0> ),
        .O(addra[19]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(addra[1]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[20]_inst 
       (.I(\<const0> ),
        .O(addra[20]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[21]_inst 
       (.I(\<const0> ),
        .O(addra[21]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[22]_inst 
       (.I(\<const0> ),
        .O(addra[22]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[23]_inst 
       (.I(\<const0> ),
        .O(addra[23]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[24]_inst 
       (.I(\<const0> ),
        .O(addra[24]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[25]_inst 
       (.I(\<const0> ),
        .O(addra[25]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[26]_inst 
       (.I(\<const0> ),
        .O(addra[26]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[27]_inst 
       (.I(\<const0> ),
        .O(addra[27]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[28]_inst 
       (.I(\<const0> ),
        .O(addra[28]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[29]_inst 
       (.I(\<const0> ),
        .O(addra[29]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(addra[2]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[30]_inst 
       (.I(\<const0> ),
        .O(addra[30]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[31]_inst 
       (.I(\<const0> ),
        .O(addra[31]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(addra[3]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[4]_inst 
       (.I(\<const0> ),
        .O(addra[4]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[5]_inst 
       (.I(\<const0> ),
        .O(addra[5]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[6]_inst 
       (.I(\<const0> ),
        .O(addra[6]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[7]_inst 
       (.I(\<const0> ),
        .O(addra[7]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[8]_inst 
       (.I(\<const0> ),
        .O(addra[8]),
        .T(\<const1> ));
  OBUFT \addra_OBUF[9]_inst 
       (.I(\<const0> ),
        .O(addra[9]),
        .T(\<const1> ));
  OBUF \addrb_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(addrb[0]));
  OBUF \addrb_OBUF[10]_inst 
       (.I(\<const0> ),
        .O(addrb[10]));
  OBUF \addrb_OBUF[11]_inst 
       (.I(\<const0> ),
        .O(addrb[11]));
  OBUF \addrb_OBUF[12]_inst 
       (.I(\<const0> ),
        .O(addrb[12]));
  OBUF \addrb_OBUF[13]_inst 
       (.I(\<const0> ),
        .O(addrb[13]));
  OBUF \addrb_OBUF[14]_inst 
       (.I(\<const0> ),
        .O(addrb[14]));
  OBUF \addrb_OBUF[15]_inst 
       (.I(\<const0> ),
        .O(addrb[15]));
  OBUF \addrb_OBUF[16]_inst 
       (.I(\<const0> ),
        .O(addrb[16]));
  OBUF \addrb_OBUF[17]_inst 
       (.I(\<const0> ),
        .O(addrb[17]));
  OBUF \addrb_OBUF[18]_inst 
       (.I(\<const0> ),
        .O(addrb[18]));
  OBUF \addrb_OBUF[19]_inst 
       (.I(\<const0> ),
        .O(addrb[19]));
  OBUF \addrb_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(addrb[1]));
  OBUF \addrb_OBUF[20]_inst 
       (.I(\<const0> ),
        .O(addrb[20]));
  OBUF \addrb_OBUF[21]_inst 
       (.I(\<const0> ),
        .O(addrb[21]));
  OBUF \addrb_OBUF[22]_inst 
       (.I(\<const0> ),
        .O(addrb[22]));
  OBUF \addrb_OBUF[23]_inst 
       (.I(\<const0> ),
        .O(addrb[23]));
  OBUF \addrb_OBUF[24]_inst 
       (.I(\<const0> ),
        .O(addrb[24]));
  OBUF \addrb_OBUF[25]_inst 
       (.I(\<const0> ),
        .O(addrb[25]));
  OBUF \addrb_OBUF[26]_inst 
       (.I(\<const0> ),
        .O(addrb[26]));
  OBUF \addrb_OBUF[27]_inst 
       (.I(\<const0> ),
        .O(addrb[27]));
  OBUF \addrb_OBUF[28]_inst 
       (.I(\<const0> ),
        .O(addrb[28]));
  OBUF \addrb_OBUF[29]_inst 
       (.I(\<const0> ),
        .O(addrb[29]));
  OBUF \addrb_OBUF[2]_inst 
       (.I(addrb_OBUF[2]),
        .O(addrb[2]));
  OBUF \addrb_OBUF[30]_inst 
       (.I(\<const0> ),
        .O(addrb[30]));
  OBUF \addrb_OBUF[31]_inst 
       (.I(\<const0> ),
        .O(addrb[31]));
  OBUF \addrb_OBUF[3]_inst 
       (.I(addrb_OBUF[3]),
        .O(addrb[3]));
  OBUF \addrb_OBUF[4]_inst 
       (.I(addrb_OBUF[4]),
        .O(addrb[4]));
  OBUF \addrb_OBUF[5]_inst 
       (.I(addrb_OBUF[5]),
        .O(addrb[5]));
  OBUF \addrb_OBUF[6]_inst 
       (.I(addrb_OBUF[6]),
        .O(addrb[6]));
  OBUF \addrb_OBUF[7]_inst 
       (.I(addrb_OBUF[7]),
        .O(addrb[7]));
  OBUF \addrb_OBUF[8]_inst 
       (.I(\<const0> ),
        .O(addrb[8]));
  OBUF \addrb_OBUF[9]_inst 
       (.I(\<const0> ),
        .O(addrb[9]));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clkb_OBUF));
  OBUF clka_OBUF_inst
       (.I(clkb_OBUF_BUFG),
        .O(clka));
  BUFG clkb_OBUF_BUFG_inst
       (.I(clkb_OBUF),
        .O(clkb_OBUF_BUFG));
  OBUF clkb_OBUF_inst
       (.I(clkb_OBUF_BUFG),
        .O(clkb));
  OBUF csn_OBUF_inst
       (.I(csn_OBUF),
        .O(csn));
  OBUFT \dina_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(dina[0]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[10]_inst 
       (.I(\<const0> ),
        .O(dina[10]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[11]_inst 
       (.I(\<const0> ),
        .O(dina[11]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[12]_inst 
       (.I(\<const0> ),
        .O(dina[12]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[13]_inst 
       (.I(\<const0> ),
        .O(dina[13]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[14]_inst 
       (.I(\<const0> ),
        .O(dina[14]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[15]_inst 
       (.I(\<const0> ),
        .O(dina[15]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[16]_inst 
       (.I(\<const0> ),
        .O(dina[16]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[17]_inst 
       (.I(\<const0> ),
        .O(dina[17]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[18]_inst 
       (.I(\<const0> ),
        .O(dina[18]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[19]_inst 
       (.I(\<const0> ),
        .O(dina[19]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(dina[1]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[20]_inst 
       (.I(\<const0> ),
        .O(dina[20]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[21]_inst 
       (.I(\<const0> ),
        .O(dina[21]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[22]_inst 
       (.I(\<const0> ),
        .O(dina[22]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[23]_inst 
       (.I(\<const0> ),
        .O(dina[23]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[24]_inst 
       (.I(\<const0> ),
        .O(dina[24]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[25]_inst 
       (.I(\<const0> ),
        .O(dina[25]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[26]_inst 
       (.I(\<const0> ),
        .O(dina[26]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[27]_inst 
       (.I(\<const0> ),
        .O(dina[27]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[28]_inst 
       (.I(\<const0> ),
        .O(dina[28]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[29]_inst 
       (.I(\<const0> ),
        .O(dina[29]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(dina[2]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[30]_inst 
       (.I(\<const0> ),
        .O(dina[30]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[31]_inst 
       (.I(\<const0> ),
        .O(dina[31]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(dina[3]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[4]_inst 
       (.I(\<const0> ),
        .O(dina[4]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[5]_inst 
       (.I(\<const0> ),
        .O(dina[5]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[6]_inst 
       (.I(\<const0> ),
        .O(dina[6]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[7]_inst 
       (.I(\<const0> ),
        .O(dina[7]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[8]_inst 
       (.I(\<const0> ),
        .O(dina[8]),
        .T(\<const1> ));
  OBUFT \dina_OBUF[9]_inst 
       (.I(\<const0> ),
        .O(dina[9]),
        .T(\<const1> ));
  OBUF \dinb_OBUF[0]_inst 
       (.I(dinb_OBUF[0]),
        .O(dinb[0]));
  OBUF \dinb_OBUF[10]_inst 
       (.I(dinb_OBUF[10]),
        .O(dinb[10]));
  OBUF \dinb_OBUF[11]_inst 
       (.I(dinb_OBUF[11]),
        .O(dinb[11]));
  OBUF \dinb_OBUF[12]_inst 
       (.I(dinb_OBUF[12]),
        .O(dinb[12]));
  OBUF \dinb_OBUF[13]_inst 
       (.I(dinb_OBUF[13]),
        .O(dinb[13]));
  OBUF \dinb_OBUF[14]_inst 
       (.I(dinb_OBUF[14]),
        .O(dinb[14]));
  OBUF \dinb_OBUF[15]_inst 
       (.I(dinb_OBUF[15]),
        .O(dinb[15]));
  OBUF \dinb_OBUF[16]_inst 
       (.I(dinb_OBUF[16]),
        .O(dinb[16]));
  OBUF \dinb_OBUF[17]_inst 
       (.I(dinb_OBUF[17]),
        .O(dinb[17]));
  OBUF \dinb_OBUF[18]_inst 
       (.I(dinb_OBUF[18]),
        .O(dinb[18]));
  OBUF \dinb_OBUF[19]_inst 
       (.I(dinb_OBUF[19]),
        .O(dinb[19]));
  OBUF \dinb_OBUF[1]_inst 
       (.I(dinb_OBUF[1]),
        .O(dinb[1]));
  OBUF \dinb_OBUF[20]_inst 
       (.I(dinb_OBUF[20]),
        .O(dinb[20]));
  OBUF \dinb_OBUF[21]_inst 
       (.I(dinb_OBUF[21]),
        .O(dinb[21]));
  OBUF \dinb_OBUF[22]_inst 
       (.I(dinb_OBUF[22]),
        .O(dinb[22]));
  OBUF \dinb_OBUF[23]_inst 
       (.I(dinb_OBUF[23]),
        .O(dinb[23]));
  OBUF \dinb_OBUF[24]_inst 
       (.I(dinb_OBUF[24]),
        .O(dinb[24]));
  OBUF \dinb_OBUF[25]_inst 
       (.I(dinb_OBUF[25]),
        .O(dinb[25]));
  OBUF \dinb_OBUF[26]_inst 
       (.I(dinb_OBUF[26]),
        .O(dinb[26]));
  OBUF \dinb_OBUF[27]_inst 
       (.I(dinb_OBUF[27]),
        .O(dinb[27]));
  OBUF \dinb_OBUF[28]_inst 
       (.I(dinb_OBUF[28]),
        .O(dinb[28]));
  OBUF \dinb_OBUF[29]_inst 
       (.I(dinb_OBUF[29]),
        .O(dinb[29]));
  OBUF \dinb_OBUF[2]_inst 
       (.I(dinb_OBUF[2]),
        .O(dinb[2]));
  OBUF \dinb_OBUF[30]_inst 
       (.I(dinb_OBUF[30]),
        .O(dinb[30]));
  OBUF \dinb_OBUF[31]_inst 
       (.I(dinb_OBUF[31]),
        .O(dinb[31]));
  OBUF \dinb_OBUF[3]_inst 
       (.I(dinb_OBUF[3]),
        .O(dinb[3]));
  OBUF \dinb_OBUF[4]_inst 
       (.I(dinb_OBUF[4]),
        .O(dinb[4]));
  OBUF \dinb_OBUF[5]_inst 
       (.I(dinb_OBUF[5]),
        .O(dinb[5]));
  OBUF \dinb_OBUF[6]_inst 
       (.I(dinb_OBUF[6]),
        .O(dinb[6]));
  OBUF \dinb_OBUF[7]_inst 
       (.I(dinb_OBUF[7]),
        .O(dinb[7]));
  OBUF \dinb_OBUF[8]_inst 
       (.I(dinb_OBUF[8]),
        .O(dinb[8]));
  OBUF \dinb_OBUF[9]_inst 
       (.I(dinb_OBUF[9]),
        .O(dinb[9]));
  OBUF \dir[0]_INST_0 
       (.I(\<const0> ),
        .O(\dir[0] ));
  OBUF \dir[1]_INST_0 
       (.I(\<const0> ),
        .O(\dir[1] ));
  OBUF \dir[2]_INST_0 
       (.I(\<const0> ),
        .O(\dir[2] ));
  IBUF \doutb_IBUF[0]_inst 
       (.I(doutb[0]),
        .O(doutb_IBUF[0]));
  IBUF \doutb_IBUF[10]_inst 
       (.I(doutb[10]),
        .O(doutb_IBUF[10]));
  IBUF \doutb_IBUF[11]_inst 
       (.I(doutb[11]),
        .O(doutb_IBUF[11]));
  IBUF \doutb_IBUF[12]_inst 
       (.I(doutb[12]),
        .O(doutb_IBUF[12]));
  IBUF \doutb_IBUF[13]_inst 
       (.I(doutb[13]),
        .O(doutb_IBUF[13]));
  IBUF \doutb_IBUF[14]_inst 
       (.I(doutb[14]),
        .O(doutb_IBUF[14]));
  IBUF \doutb_IBUF[15]_inst 
       (.I(doutb[15]),
        .O(doutb_IBUF[15]));
  IBUF \doutb_IBUF[16]_inst 
       (.I(doutb[16]),
        .O(doutb_IBUF[16]));
  IBUF \doutb_IBUF[17]_inst 
       (.I(doutb[17]),
        .O(doutb_IBUF[17]));
  IBUF \doutb_IBUF[18]_inst 
       (.I(doutb[18]),
        .O(doutb_IBUF[18]));
  IBUF \doutb_IBUF[19]_inst 
       (.I(doutb[19]),
        .O(doutb_IBUF[19]));
  IBUF \doutb_IBUF[1]_inst 
       (.I(doutb[1]),
        .O(doutb_IBUF[1]));
  IBUF \doutb_IBUF[20]_inst 
       (.I(doutb[20]),
        .O(doutb_IBUF[20]));
  IBUF \doutb_IBUF[21]_inst 
       (.I(doutb[21]),
        .O(doutb_IBUF[21]));
  IBUF \doutb_IBUF[22]_inst 
       (.I(doutb[22]),
        .O(doutb_IBUF[22]));
  IBUF \doutb_IBUF[23]_inst 
       (.I(doutb[23]),
        .O(doutb_IBUF[23]));
  IBUF \doutb_IBUF[24]_inst 
       (.I(doutb[24]),
        .O(doutb_IBUF[24]));
  IBUF \doutb_IBUF[25]_inst 
       (.I(doutb[25]),
        .O(doutb_IBUF[25]));
  IBUF \doutb_IBUF[26]_inst 
       (.I(doutb[26]),
        .O(doutb_IBUF[26]));
  IBUF \doutb_IBUF[27]_inst 
       (.I(doutb[27]),
        .O(doutb_IBUF[27]));
  IBUF \doutb_IBUF[28]_inst 
       (.I(doutb[28]),
        .O(doutb_IBUF[28]));
  IBUF \doutb_IBUF[29]_inst 
       (.I(doutb[29]),
        .O(doutb_IBUF[29]));
  IBUF \doutb_IBUF[2]_inst 
       (.I(doutb[2]),
        .O(doutb_IBUF[2]));
  IBUF \doutb_IBUF[30]_inst 
       (.I(doutb[30]),
        .O(doutb_IBUF[30]));
  IBUF \doutb_IBUF[31]_inst 
       (.I(doutb[31]),
        .O(doutb_IBUF[31]));
  IBUF \doutb_IBUF[3]_inst 
       (.I(doutb[3]),
        .O(doutb_IBUF[3]));
  IBUF \doutb_IBUF[4]_inst 
       (.I(doutb[4]),
        .O(doutb_IBUF[4]));
  IBUF \doutb_IBUF[5]_inst 
       (.I(doutb[5]),
        .O(doutb_IBUF[5]));
  IBUF \doutb_IBUF[6]_inst 
       (.I(doutb[6]),
        .O(doutb_IBUF[6]));
  IBUF \doutb_IBUF[7]_inst 
       (.I(doutb[7]),
        .O(doutb_IBUF[7]));
  IBUF \doutb_IBUF[8]_inst 
       (.I(doutb[8]),
        .O(doutb_IBUF[8]));
  IBUF \doutb_IBUF[9]_inst 
       (.I(doutb[9]),
        .O(doutb_IBUF[9]));
  OBUFT ena_OBUF_inst
       (.I(\<const0> ),
        .O(ena),
        .T(\<const1> ));
  OBUFT enb_OBUF_inst
       (.I(\<const0> ),
        .O(enb),
        .T(\<const1> ));
  OBUF \enn[0]_INST_0 
       (.I(\<const1> ),
        .O(\enn[0] ));
  OBUF \enn[1]_INST_0 
       (.I(\<const1> ),
        .O(\enn[1] ));
  OBUF \enn[2]_INST_0 
       (.I(\<const1> ),
        .O(\enn[2] ));
  IBUF miso_IBUF_inst
       (.I(miso),
        .O(miso_IBUF));
  OBUF mosi_OBUF_inst
       (.I(mosi_OBUF),
        .O(mosi));
  OBUF reseta_OBUF_inst
       (.I(resetb_OBUF),
        .O(reseta));
  OBUF resetb_OBUF_inst
       (.I(resetb_OBUF),
        .O(resetb));
  IBUF resetn_IBUF_inst
       (.I(resetn),
        .O(resetn_IBUF));
  OBUF sclk_OBUF_inst
       (.I(sclk_OBUF),
        .O(sclk));
  OBUFT smiso_OBUF_inst
       (.I(\<const0> ),
        .O(smiso),
        .T(\<const1> ));
  OBUF \step[0]_INST_0 
       (.I(\<const0> ),
        .O(\step[0] ));
  OBUF \step[1]_INST_0 
       (.I(\<const0> ),
        .O(\step[1] ));
  OBUF \step[2]_INST_0 
       (.I(\<const0> ),
        .O(\step[2] ));
  tmcspi tmcspi
       (.Q(addrb_OBUF),
        .SR(resetb_OBUF),
        .clkb_OBUF(clkb_OBUF),
        .clkb_OBUF_BUFG(clkb_OBUF_BUFG),
        .csn_OBUF(csn_OBUF),
        .dinb_OBUF(dinb_OBUF),
        .doutb_IBUF(doutb_IBUF),
        .miso_IBUF(miso_IBUF),
        .mosi_OBUF(mosi_OBUF),
        .resetn_IBUF(resetn_IBUF),
        .sclk_OBUF(sclk_OBUF),
        .web_OBUF(web_OBUF));
  OBUFT \wea_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(wea[0]),
        .T(\<const1> ));
  OBUFT \wea_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(wea[1]),
        .T(\<const1> ));
  OBUFT \wea_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(wea[2]),
        .T(\<const1> ));
  OBUFT \wea_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(wea[3]),
        .T(\<const1> ));
  OBUF \web_OBUF[0]_inst 
       (.I(web_OBUF),
        .O(web[0]));
  OBUF \web_OBUF[1]_inst 
       (.I(web_OBUF),
        .O(web[1]));
  OBUF \web_OBUF[2]_inst 
       (.I(web_OBUF),
        .O(web[2]));
  OBUF \web_OBUF[3]_inst 
       (.I(web_OBUF),
        .O(web[3]));
endmodule

module spi_master
   (csn_OBUF,
    sclk_OBUF,
    wren_i_reg,
    \di_i_reg[39] ,
    we_reg,
    \din_reg[31] ,
    D,
    \p_rchip_reg[7] ,
    \p_chip_reg[7] ,
    E,
    \di_i_reg[0] ,
    \p_rchip_reg[0] ,
    \addr_reg[0] ,
    \din_reg[0] ,
    \p_chip_reg[0] ,
    \p_reg_reg[0] ,
    \din_reg[31]_0 ,
    mosi_OBUF,
    clkb_OBUF_BUFG,
    \delay_reg[6] ,
    wren_i_reg_0,
    out,
    web_OBUF,
    miso_IBUF,
    \p_reg_reg[4] ,
    \p_reg_reg[1] ,
    \p_reg_reg[5] ,
    \p_reg_reg[7] ,
    \FSM_onehot_state_reg[7] ,
    doutb_IBUF,
    \memreal_reg[0][1] ,
    \FSM_onehot_state_reg[5] ,
    \p_reg_reg[7]_0 ,
    \FSM_onehot_state_reg[10] ,
    \FSM_onehot_state_reg[2] ,
    \p_rchip_reg[6] ,
    \FSM_onehot_state_reg[11] ,
    \p_rchip_reg[6]_0 ,
    \FSM_onehot_state_reg[2]_0 ,
    Q,
    \memreal_reg[0][4] ,
    \p_chip_reg[3] ,
    \FSM_onehot_state_reg[11]_0 ,
    \FSM_onehot_state_reg[9] ,
    \FSM_onehot_state_reg[2]_1 ,
    \memreal_reg[0][2] ,
    we1,
    \p_reg_reg[6] ,
    \FSM_onehot_state_reg[10]_0 ,
    \t_chip_reg[0] ,
    \p_rchip_reg[7]_0 ,
    \p_rreg_reg[7] ,
    \p_rreg_reg[1] ,
    \p_rreg_reg[4] ,
    \memreal_reg[0][0] ,
    \memreal_reg[0][1]_0 ,
    \p_rchip_reg[3] ,
    \p_chip_reg[7]_0 ,
    \numchips_reg[6] ,
    \p_chip_reg[6] ,
    \numchips_reg[5] ,
    \p_chip_reg[5] ,
    \numchips_reg[4] ,
    \p_chip_reg[4] ,
    \numchips_reg[3] ,
    \FSM_onehot_state_reg[1] ,
    \p_chip_reg[1] ,
    \p_chip_reg[5]_0 ,
    \p_chip_reg[3]_0 ,
    \numchips_reg[2] ,
    \p_chip_reg[2] ,
    \numchips_reg[1] ,
    \FSM_onehot_state_reg[1]_0 ,
    \p_chip_reg[1]_0 ,
    \numchips_reg[0] ,
    \p_chip_reg[5]_1 ,
    \numchips_reg[1]_0 ,
    \p_rchip_reg[7]_1 ,
    \p_rchip_reg[6]_1 ,
    \p_rchip_reg[5] ,
    \p_rchip_reg[4] ,
    \FSM_onehot_state_reg[7]_0 ,
    \p_rchip_reg[3]_0 ,
    \p_rchip_reg[2] ,
    \p_rchip_reg[0]_0 ,
    \p_rchip_reg[1] ,
    \p_rchip_reg[5]_0 ,
    \FSM_onehot_state_reg[12] ,
    \p_rchip_reg[2]_0 ,
    \p_rchip_reg[0]_1 ,
    \p_rchip_reg[5]_1 ,
    \FSM_onehot_state_reg[1]_1 ,
    \FSM_onehot_state_reg[8] ,
    \FSM_onehot_state_reg[1]_2 ,
    \p_chip_reg[1]_1 ,
    \FSM_onehot_state_reg[1]_3 ,
    \p_chip_reg[1]_2 ,
    \FSM_onehot_state_reg[1]_4 ,
    \p_chip_reg[5]_2 ,
    \FSM_onehot_state_reg[1]_5 ,
    \p_chip_reg[6]_0 ,
    \FSM_onehot_state_reg[1]_6 ,
    \FSM_onehot_state_reg[4] ,
    \FSM_onehot_state_reg[0] ,
    \delay_reg[6]_0 ,
    \FSM_onehot_state_reg[7]_1 ,
    \p_chip_reg[4]_0 ,
    \di_i_reg[39]_0 );
  output csn_OBUF;
  output sclk_OBUF;
  output wren_i_reg;
  output \di_i_reg[39] ;
  output we_reg;
  output \din_reg[31] ;
  output [10:0]D;
  output [7:0]\p_rchip_reg[7] ;
  output [7:0]\p_chip_reg[7] ;
  output [0:0]E;
  output \di_i_reg[0] ;
  output [0:0]\p_rchip_reg[0] ;
  output [0:0]\addr_reg[0] ;
  output \din_reg[0] ;
  output [0:0]\p_chip_reg[0] ;
  output [0:0]\p_reg_reg[0] ;
  output [31:0]\din_reg[31]_0 ;
  output mosi_OBUF;
  input clkb_OBUF_BUFG;
  input \delay_reg[6] ;
  input wren_i_reg_0;
  input [12:0]out;
  input [0:0]web_OBUF;
  input miso_IBUF;
  input \p_reg_reg[4] ;
  input \p_reg_reg[1] ;
  input \p_reg_reg[5] ;
  input \p_reg_reg[7] ;
  input \FSM_onehot_state_reg[7] ;
  input [1:0]doutb_IBUF;
  input \memreal_reg[0][1] ;
  input \FSM_onehot_state_reg[5] ;
  input \p_reg_reg[7]_0 ;
  input \FSM_onehot_state_reg[10] ;
  input \FSM_onehot_state_reg[2] ;
  input \p_rchip_reg[6] ;
  input \FSM_onehot_state_reg[11] ;
  input \p_rchip_reg[6]_0 ;
  input \FSM_onehot_state_reg[2]_0 ;
  input [1:0]Q;
  input \memreal_reg[0][4] ;
  input \p_chip_reg[3] ;
  input \FSM_onehot_state_reg[11]_0 ;
  input \FSM_onehot_state_reg[9] ;
  input \FSM_onehot_state_reg[2]_1 ;
  input \memreal_reg[0][2] ;
  input we1;
  input \p_reg_reg[6] ;
  input \FSM_onehot_state_reg[10]_0 ;
  input \t_chip_reg[0] ;
  input [7:0]\p_rchip_reg[7]_0 ;
  input [0:0]\p_rreg_reg[7] ;
  input \p_rreg_reg[1] ;
  input \p_rreg_reg[4] ;
  input \memreal_reg[0][0] ;
  input \memreal_reg[0][1]_0 ;
  input \p_rchip_reg[3] ;
  input \p_chip_reg[7]_0 ;
  input \numchips_reg[6] ;
  input \p_chip_reg[6] ;
  input \numchips_reg[5] ;
  input \p_chip_reg[5] ;
  input \numchips_reg[4] ;
  input \p_chip_reg[4] ;
  input \numchips_reg[3] ;
  input \FSM_onehot_state_reg[1] ;
  input \p_chip_reg[1] ;
  input \p_chip_reg[5]_0 ;
  input \p_chip_reg[3]_0 ;
  input \numchips_reg[2] ;
  input \p_chip_reg[2] ;
  input \numchips_reg[1] ;
  input \FSM_onehot_state_reg[1]_0 ;
  input \p_chip_reg[1]_0 ;
  input \numchips_reg[0] ;
  input [5:0]\p_chip_reg[5]_1 ;
  input [1:0]\numchips_reg[1]_0 ;
  input \p_rchip_reg[7]_1 ;
  input \p_rchip_reg[6]_1 ;
  input \p_rchip_reg[5] ;
  input \p_rchip_reg[4] ;
  input \FSM_onehot_state_reg[7]_0 ;
  input \p_rchip_reg[3]_0 ;
  input \p_rchip_reg[2] ;
  input \p_rchip_reg[0]_0 ;
  input \p_rchip_reg[1] ;
  input \p_rchip_reg[5]_0 ;
  input \FSM_onehot_state_reg[12] ;
  input \p_rchip_reg[2]_0 ;
  input \p_rchip_reg[0]_1 ;
  input \p_rchip_reg[5]_1 ;
  input \FSM_onehot_state_reg[1]_1 ;
  input \FSM_onehot_state_reg[8] ;
  input \FSM_onehot_state_reg[1]_2 ;
  input \p_chip_reg[1]_1 ;
  input \FSM_onehot_state_reg[1]_3 ;
  input \p_chip_reg[1]_2 ;
  input \FSM_onehot_state_reg[1]_4 ;
  input \p_chip_reg[5]_2 ;
  input \FSM_onehot_state_reg[1]_5 ;
  input \p_chip_reg[6]_0 ;
  input \FSM_onehot_state_reg[1]_6 ;
  input \FSM_onehot_state_reg[4] ;
  input \FSM_onehot_state_reg[0] ;
  input \delay_reg[6]_0 ;
  input \FSM_onehot_state_reg[7]_1 ;
  input \p_chip_reg[4]_0 ;
  input [39:0]\di_i_reg[39]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [10:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[11]_i_2_n_0 ;
  wire \FSM_onehot_state[12]_i_4_n_0 ;
  wire \FSM_onehot_state[12]_i_8_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[8]_i_2_n_0 ;
  wire \FSM_onehot_state[8]_i_3_n_0 ;
  wire \FSM_onehot_state[8]_i_5_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[10] ;
  wire \FSM_onehot_state_reg[10]_0 ;
  wire \FSM_onehot_state_reg[11] ;
  wire \FSM_onehot_state_reg[11]_0 ;
  wire \FSM_onehot_state_reg[12] ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg[1]_2 ;
  wire \FSM_onehot_state_reg[1]_3 ;
  wire \FSM_onehot_state_reg[1]_4 ;
  wire \FSM_onehot_state_reg[1]_5 ;
  wire \FSM_onehot_state_reg[1]_6 ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire \FSM_onehot_state_reg[4] ;
  wire \FSM_onehot_state_reg[5] ;
  wire \FSM_onehot_state_reg[7] ;
  wire \FSM_onehot_state_reg[7]_0 ;
  wire \FSM_onehot_state_reg[7]_1 ;
  wire \FSM_onehot_state_reg[8] ;
  wire \FSM_onehot_state_reg[9] ;
  wire [1:0]Q;
  wire \addr[5]_i_5_n_0 ;
  wire \addr[5]_i_6_n_0 ;
  wire \addr[5]_i_8_n_0 ;
  wire [0:0]\addr_reg[0] ;
  wire [3:0]clk_cnt;
  wire \clk_cnt[0]_i_1_n_0 ;
  wire \clk_cnt[1]_i_1_n_0 ;
  wire \clk_cnt[2]_i_1_n_0 ;
  wire \clk_cnt[3]_i_1_n_0 ;
  wire \clk_cnt[3]_i_2_n_0 ;
  wire clkb_OBUF_BUFG;
  wire core_ce_i_1_n_0;
  wire core_ce_reg_n_0;
  wire core_n_ce_i_1_n_0;
  wire core_n_ce_reg_n_0;
  wire core_n_clk;
  wire core_n_clk_i_1_n_0;
  wire csn_OBUF;
  wire [39:0]data0;
  wire \delay_reg[6] ;
  wire \delay_reg[6]_0 ;
  wire \di_i[38]_i_3_n_0 ;
  wire \di_i_reg[0] ;
  wire \di_i_reg[39] ;
  wire [39:0]\di_i_reg[39]_0 ;
  wire \di_reg_reg_n_0_[0] ;
  wire \di_reg_reg_n_0_[10] ;
  wire \di_reg_reg_n_0_[11] ;
  wire \di_reg_reg_n_0_[12] ;
  wire \di_reg_reg_n_0_[13] ;
  wire \di_reg_reg_n_0_[14] ;
  wire \di_reg_reg_n_0_[15] ;
  wire \di_reg_reg_n_0_[16] ;
  wire \di_reg_reg_n_0_[17] ;
  wire \di_reg_reg_n_0_[18] ;
  wire \di_reg_reg_n_0_[19] ;
  wire \di_reg_reg_n_0_[1] ;
  wire \di_reg_reg_n_0_[20] ;
  wire \di_reg_reg_n_0_[21] ;
  wire \di_reg_reg_n_0_[22] ;
  wire \di_reg_reg_n_0_[23] ;
  wire \di_reg_reg_n_0_[24] ;
  wire \di_reg_reg_n_0_[25] ;
  wire \di_reg_reg_n_0_[26] ;
  wire \di_reg_reg_n_0_[27] ;
  wire \di_reg_reg_n_0_[28] ;
  wire \di_reg_reg_n_0_[29] ;
  wire \di_reg_reg_n_0_[2] ;
  wire \di_reg_reg_n_0_[30] ;
  wire \di_reg_reg_n_0_[31] ;
  wire \di_reg_reg_n_0_[32] ;
  wire \di_reg_reg_n_0_[33] ;
  wire \di_reg_reg_n_0_[34] ;
  wire \di_reg_reg_n_0_[35] ;
  wire \di_reg_reg_n_0_[36] ;
  wire \di_reg_reg_n_0_[37] ;
  wire \di_reg_reg_n_0_[38] ;
  wire \di_reg_reg_n_0_[3] ;
  wire \di_reg_reg_n_0_[4] ;
  wire \di_reg_reg_n_0_[5] ;
  wire \di_reg_reg_n_0_[6] ;
  wire \di_reg_reg_n_0_[7] ;
  wire \di_reg_reg_n_0_[8] ;
  wire \di_reg_reg_n_0_[9] ;
  wire di_req_o;
  wire di_req_o_A;
  wire di_req_o_B;
  wire di_req_o_C;
  wire di_req_o_D;
  wire di_req_o_next;
  wire di_req_reg;
  wire di_req_reg_i_1_n_0;
  wire di_req_reg_i_2_n_0;
  wire \din_reg[0] ;
  wire \din_reg[31] ;
  wire [31:0]\din_reg[31]_0 ;
  wire \do_buffer_reg[31]_i_1_n_0 ;
  wire do_transfer_reg;
  wire do_transfer_reg_0;
  wire do_transfer_reg_i_1_n_0;
  wire do_valid_A;
  wire do_valid_B;
  wire do_valid_C;
  wire do_valid_D;
  wire do_valid_next;
  wire do_valid_o;
  wire [1:0]doutb_IBUF;
  wire idle_o;
  wire \memreal_reg[0][0] ;
  wire \memreal_reg[0][1] ;
  wire \memreal_reg[0][1]_0 ;
  wire \memreal_reg[0][2] ;
  wire \memreal_reg[0][4] ;
  wire miso_IBUF;
  wire mosi_OBUF;
  wire mosi_OBUF_inst_i_2_n_0;
  wire \numchips_reg[0] ;
  wire \numchips_reg[1] ;
  wire [1:0]\numchips_reg[1]_0 ;
  wire \numchips_reg[2] ;
  wire \numchips_reg[3] ;
  wire \numchips_reg[4] ;
  wire \numchips_reg[5] ;
  wire \numchips_reg[6] ;
  wire [12:0]out;
  wire p_1_in;
  wire \p_chip[0]_i_3_n_0 ;
  wire \p_chip[1]_i_3_n_0 ;
  wire \p_chip[2]_i_2_n_0 ;
  wire \p_chip[2]_i_3_n_0 ;
  wire \p_chip[3]_i_3_n_0 ;
  wire \p_chip[4]_i_3_n_0 ;
  wire \p_chip[4]_i_4_n_0 ;
  wire \p_chip[5]_i_4_n_0 ;
  wire \p_chip[6]_i_4_n_0 ;
  wire \p_chip[7]_i_4_n_0 ;
  wire \p_chip[7]_i_7_n_0 ;
  wire [0:0]\p_chip_reg[0] ;
  wire \p_chip_reg[1] ;
  wire \p_chip_reg[1]_0 ;
  wire \p_chip_reg[1]_1 ;
  wire \p_chip_reg[1]_2 ;
  wire \p_chip_reg[2] ;
  wire \p_chip_reg[3] ;
  wire \p_chip_reg[3]_0 ;
  wire \p_chip_reg[4] ;
  wire \p_chip_reg[4]_0 ;
  wire \p_chip_reg[5] ;
  wire \p_chip_reg[5]_0 ;
  wire [5:0]\p_chip_reg[5]_1 ;
  wire \p_chip_reg[5]_2 ;
  wire \p_chip_reg[6] ;
  wire \p_chip_reg[6]_0 ;
  wire [7:0]\p_chip_reg[7] ;
  wire \p_chip_reg[7]_0 ;
  wire \p_rchip[0]_i_2_n_0 ;
  wire \p_rchip[0]_i_3_n_0 ;
  wire \p_rchip[1]_i_2_n_0 ;
  wire \p_rchip[1]_i_3_n_0 ;
  wire \p_rchip[2]_i_2_n_0 ;
  wire \p_rchip[2]_i_6_n_0 ;
  wire \p_rchip[3]_i_3_n_0 ;
  wire \p_rchip[3]_i_4_n_0 ;
  wire \p_rchip[4]_i_3_n_0 ;
  wire \p_rchip[4]_i_7_n_0 ;
  wire \p_rchip[5]_i_3_n_0 ;
  wire \p_rchip[5]_i_4_n_0 ;
  wire \p_rchip[6]_i_3_n_0 ;
  wire \p_rchip[6]_i_4_n_0 ;
  wire \p_rchip[7]_i_3_n_0 ;
  wire \p_rchip[7]_i_4_n_0 ;
  wire \p_rchip[7]_i_5_n_0 ;
  wire \p_rchip[7]_i_6_n_0 ;
  wire \p_rchip[7]_i_8_n_0 ;
  wire \p_rchip[7]_i_9_n_0 ;
  wire [0:0]\p_rchip_reg[0] ;
  wire \p_rchip_reg[0]_0 ;
  wire \p_rchip_reg[0]_1 ;
  wire \p_rchip_reg[1] ;
  wire \p_rchip_reg[2] ;
  wire \p_rchip_reg[2]_0 ;
  wire \p_rchip_reg[3] ;
  wire \p_rchip_reg[3]_0 ;
  wire \p_rchip_reg[4] ;
  wire \p_rchip_reg[5] ;
  wire \p_rchip_reg[5]_0 ;
  wire \p_rchip_reg[5]_1 ;
  wire \p_rchip_reg[6] ;
  wire \p_rchip_reg[6]_0 ;
  wire \p_rchip_reg[6]_1 ;
  wire [7:0]\p_rchip_reg[7] ;
  wire [7:0]\p_rchip_reg[7]_0 ;
  wire \p_rchip_reg[7]_1 ;
  wire [0:0]\p_reg_reg[0] ;
  wire \p_reg_reg[1] ;
  wire \p_reg_reg[4] ;
  wire \p_reg_reg[5] ;
  wire \p_reg_reg[6] ;
  wire \p_reg_reg[7] ;
  wire \p_reg_reg[7]_0 ;
  wire \p_rreg[7]_i_3_n_0 ;
  wire \p_rreg_reg[1] ;
  wire \p_rreg_reg[4] ;
  wire [0:0]\p_rreg_reg[7] ;
  wire rx_bit_reg_i_1_n_0;
  wire sck_ena_reg;
  wire sck_ena_reg_1;
  wire sck_ena_reg_i_1_n_0;
  wire sclk_OBUF;
  wire \sh_reg[0]_i_1_n_0 ;
  wire \sh_reg[10]_i_1_n_0 ;
  wire \sh_reg[11]_i_1_n_0 ;
  wire \sh_reg[12]_i_1_n_0 ;
  wire \sh_reg[13]_i_1_n_0 ;
  wire \sh_reg[14]_i_1_n_0 ;
  wire \sh_reg[15]_i_1_n_0 ;
  wire \sh_reg[16]_i_1_n_0 ;
  wire \sh_reg[17]_i_1_n_0 ;
  wire \sh_reg[18]_i_1_n_0 ;
  wire \sh_reg[19]_i_1_n_0 ;
  wire \sh_reg[1]_i_1_n_0 ;
  wire \sh_reg[20]_i_1_n_0 ;
  wire \sh_reg[21]_i_1_n_0 ;
  wire \sh_reg[22]_i_1_n_0 ;
  wire \sh_reg[23]_i_1_n_0 ;
  wire \sh_reg[24]_i_1_n_0 ;
  wire \sh_reg[25]_i_1_n_0 ;
  wire \sh_reg[26]_i_1_n_0 ;
  wire \sh_reg[27]_i_1_n_0 ;
  wire \sh_reg[28]_i_1_n_0 ;
  wire \sh_reg[29]_i_1_n_0 ;
  wire \sh_reg[2]_i_1_n_0 ;
  wire \sh_reg[30]_i_1_n_0 ;
  wire \sh_reg[31]_i_1_n_0 ;
  wire \sh_reg[32]_i_1_n_0 ;
  wire \sh_reg[33]_i_1_n_0 ;
  wire \sh_reg[34]_i_1_n_0 ;
  wire \sh_reg[35]_i_1_n_0 ;
  wire \sh_reg[36]_i_1_n_0 ;
  wire \sh_reg[37]_i_1_n_0 ;
  wire \sh_reg[38]_i_1_n_0 ;
  wire \sh_reg[39]_i_1_n_0 ;
  wire \sh_reg[39]_i_2_n_0 ;
  wire \sh_reg[39]_i_3_n_0 ;
  wire \sh_reg[39]_i_4_n_0 ;
  wire \sh_reg[39]_i_5_n_0 ;
  wire \sh_reg[3]_i_1_n_0 ;
  wire \sh_reg[4]_i_1_n_0 ;
  wire \sh_reg[5]_i_1_n_0 ;
  wire \sh_reg[6]_i_1_n_0 ;
  wire \sh_reg[7]_i_1_n_0 ;
  wire \sh_reg[8]_i_1_n_0 ;
  wire \sh_reg[9]_i_1_n_0 ;
  wire \sh_reg_reg_n_0_[39] ;
  wire spi_2x_ce;
  wire spi_2x_ce_i_1_n_0;
  wire spi_clk_reg_i_1_n_0;
  wire ssel_ena_reg;
  wire ssel_ena_reg_2;
  wire ssel_ena_reg_i_1_n_0;
  wire [5:0]state_next;
  wire \state_reg[5]_i_2_n_0 ;
  wire \state_reg_reg_n_0_[0] ;
  wire \state_reg_reg_n_0_[1] ;
  wire \state_reg_reg_n_0_[2] ;
  wire \state_reg_reg_n_0_[3] ;
  wire \state_reg_reg_n_0_[4] ;
  wire \state_reg_reg_n_0_[5] ;
  wire \t_chip_reg[0] ;
  wire we1;
  wire we_i_2_n_0;
  wire we_reg;
  wire [0:0]web_OBUF;
  wire wr_ack_o;
  wire wr_ack_reg_i_1_n_0;
  wire wr_ack_reg_i_2_n_0;
  wire wr_ack_reg_i_3_n_0;
  wire wren_i;
  wire wren_i_1_n_0;
  wire wren_i_i_3_n_0;
  wire wren_i_i_4_n_0;
  wire wren_i_i_5_n_0;
  wire wren_i_reg;
  wire wren_i_reg_0;
  wire wren_reg_n_0;

  LUT6 #(
    .INIT(64'hF2F2F2F2000000F2)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg[7] ),
        .I2(out[0]),
        .I3(doutb_IBUF[0]),
        .I4(doutb_IBUF[1]),
        .I5(\memreal_reg[0][1] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0002000203020002)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\FSM_onehot_state_reg[5] ),
        .I1(out[10]),
        .I2(out[12]),
        .I3(out[11]),
        .I4(idle_o),
        .I5(\p_reg_reg[7]_0 ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808FF0808)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(\FSM_onehot_state[12]_i_8_n_0 ),
        .I1(\p_reg_reg[6] ),
        .I2(\p_chip_reg[3] ),
        .I3(\FSM_onehot_state_reg[9] ),
        .I4(\FSM_onehot_state_reg[10]_0 ),
        .I5(do_valid_o),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAAAE)) 
    \FSM_onehot_state[11]_i_1 
       (.I0(\FSM_onehot_state[11]_i_2_n_0 ),
        .I1(\FSM_onehot_state[12]_i_8_n_0 ),
        .I2(\p_chip_reg[3] ),
        .I3(\p_reg_reg[6] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000222200000300)) 
    \FSM_onehot_state[11]_i_2 
       (.I0(do_valid_o),
        .I1(\FSM_onehot_state_reg[9] ),
        .I2(idle_o),
        .I3(out[11]),
        .I4(out[12]),
        .I5(out[10]),
        .O(\FSM_onehot_state[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \FSM_onehot_state[12]_i_1 
       (.I0(out[7]),
        .I1(\FSM_onehot_state_reg[4] ),
        .I2(\FSM_onehot_state[12]_i_4_n_0 ),
        .I3(\FSM_onehot_state_reg[0] ),
        .I4(\delay_reg[6]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[12]_i_2 
       (.I0(we1),
        .I1(\FSM_onehot_state[12]_i_8_n_0 ),
        .I2(\p_chip_reg[3] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h00E00000)) 
    \FSM_onehot_state[12]_i_4 
       (.I0(\p_rreg_reg[4] ),
        .I1(\p_rreg_reg[1] ),
        .I2(do_valid_o),
        .I3(\p_rreg_reg[7] ),
        .I4(out[12]),
        .O(\FSM_onehot_state[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_onehot_state[12]_i_8 
       (.I0(out[8]),
        .I1(out[7]),
        .I2(out[9]),
        .I3(out[0]),
        .I4(di_req_o),
        .O(\FSM_onehot_state[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg[11] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(out[1]),
        .I5(\memreal_reg[0][4] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h004C004000400040)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(wr_ack_o),
        .I1(\FSM_onehot_state_reg[11] ),
        .I2(out[2]),
        .I3(out[1]),
        .I4(\FSM_onehot_state[2]_i_4_n_0 ),
        .I5(\p_chip_reg[3] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(di_req_o),
        .I1(out[3]),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000888800000C00)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(wr_ack_o),
        .I1(\FSM_onehot_state_reg[11] ),
        .I2(di_req_o),
        .I3(out[3]),
        .I4(out[1]),
        .I5(out[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0010001011100010)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg[11]_0 ),
        .I1(\FSM_onehot_state[4]_i_3_n_0 ),
        .I2(out[4]),
        .I3(out[3]),
        .I4(di_req_o),
        .I5(\p_chip_reg[3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBAAA)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\FSM_onehot_state_reg[9] ),
        .I1(out[3]),
        .I2(idle_o),
        .I3(wr_ack_o),
        .I4(out[10]),
        .I5(\FSM_onehot_state_reg[2]_1 ),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4055400000000000)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state[5]_i_2_n_0 ),
        .I1(wr_ack_o),
        .I2(idle_o),
        .I3(out[4]),
        .I4(out[5]),
        .I5(\FSM_onehot_state_reg[10] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00D0)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\p_rchip_reg[5]_0 ),
        .I1(\p_rchip_reg[7]_0 [7]),
        .I2(do_valid_o),
        .I3(out[4]),
        .I4(out[12]),
        .I5(out[11]),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg[2] ),
        .I1(\p_rchip_reg[6] ),
        .I2(do_valid_o),
        .I3(out[4]),
        .I4(out[5]),
        .I5(\FSM_onehot_state_reg[11] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hC0C0C0C0EAFFEAEA)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state[8]_i_2_n_0 ),
        .I1(\FSM_onehot_state[8]_i_3_n_0 ),
        .I2(\p_chip_reg[3] ),
        .I3(\memreal_reg[0][2] ),
        .I4(out[7]),
        .I5(out[0]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF22322222)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(out[12]),
        .I1(\FSM_onehot_state_reg[7] ),
        .I2(out[11]),
        .I3(out[10]),
        .I4(\p_rreg[7]_i_3_n_0 ),
        .I5(\FSM_onehot_state[8]_i_5_n_0 ),
        .O(\FSM_onehot_state[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \FSM_onehot_state[8]_i_3 
       (.I0(di_req_o),
        .I1(out[0]),
        .I2(out[9]),
        .I3(out[7]),
        .I4(out[8]),
        .I5(we1),
        .O(\FSM_onehot_state[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[8]_i_5 
       (.I0(out[7]),
        .I1(out[8]),
        .I2(wr_ack_o),
        .O(\FSM_onehot_state[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0A00000300)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(wr_ack_o),
        .I1(di_req_o),
        .I2(out[0]),
        .I3(out[9]),
        .I4(out[7]),
        .I5(out[8]),
        .O(D[7]));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEA)) 
    \addr[5]_i_1 
       (.I0(\FSM_onehot_state_reg[7]_1 ),
        .I1(out[1]),
        .I2(\memreal_reg[0][1]_0 ),
        .I3(\addr[5]_i_5_n_0 ),
        .I4(\addr[5]_i_6_n_0 ),
        .I5(\delay_reg[6] ),
        .O(\addr_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABAAAAA)) 
    \addr[5]_i_5 
       (.I0(out[6]),
        .I1(\t_chip_reg[0] ),
        .I2(\addr[5]_i_8_n_0 ),
        .I3(\p_rchip_reg[7]_0 [6]),
        .I4(out[5]),
        .I5(\p_rchip[7]_i_4_n_0 ),
        .O(\addr[5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \addr[5]_i_6 
       (.I0(\p_reg_reg[7]_0 ),
        .I1(idle_o),
        .I2(out[11]),
        .O(\addr[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \addr[5]_i_8 
       (.I0(do_valid_o),
        .I1(\p_rchip_reg[7]_0 [7]),
        .O(\addr[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_1 
       (.I0(clk_cnt[0]),
        .O(\clk_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_cnt[1]_i_1 
       (.I0(clk_cnt[0]),
        .I1(clk_cnt[1]),
        .O(\clk_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_cnt[2]_i_1 
       (.I0(clk_cnt[0]),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[2]),
        .O(\clk_cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \clk_cnt[3]_i_1 
       (.I0(clk_cnt[3]),
        .I1(clk_cnt[2]),
        .I2(clk_cnt[0]),
        .I3(clk_cnt[1]),
        .O(\clk_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_cnt[3]_i_2 
       (.I0(clk_cnt[1]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[2]),
        .I3(clk_cnt[3]),
        .O(\clk_cnt[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_cnt[0]_i_1_n_0 ),
        .Q(clk_cnt[0]),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_cnt[1]_i_1_n_0 ),
        .Q(clk_cnt[1]),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_cnt[2]_i_1_n_0 ),
        .Q(clk_cnt[2]),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_cnt[3]_i_2_n_0 ),
        .Q(clk_cnt[3]),
        .R(\clk_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    core_ce_i_1
       (.I0(core_n_clk),
        .I1(spi_2x_ce),
        .O(core_ce_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    core_ce_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(core_ce_i_1_n_0),
        .Q(core_ce_reg_n_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h4)) 
    core_n_ce_i_1
       (.I0(core_n_clk),
        .I1(spi_2x_ce),
        .O(core_n_ce_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    core_n_ce_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(core_n_ce_i_1_n_0),
        .Q(core_n_ce_reg_n_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    core_n_clk_i_1
       (.I0(spi_2x_ce),
        .I1(core_n_clk),
        .O(core_n_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    core_n_clk_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(core_n_clk_i_1_n_0),
        .Q(core_n_clk),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    csn_OBUF_inst_i_1
       (.I0(ssel_ena_reg),
        .O(csn_OBUF));
  LUT6 #(
    .INIT(64'h00000000FFFEFEFE)) 
    \di_i[38]_i_1 
       (.I0(\di_i[38]_i_3_n_0 ),
        .I1(out[8]),
        .I2(out[2]),
        .I3(idle_o),
        .I4(out[4]),
        .I5(\delay_reg[6] ),
        .O(\di_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \di_i[38]_i_3 
       (.I0(wren_i_reg_0),
        .I1(di_req_o),
        .I2(out[5]),
        .O(\di_i[38]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555540)) 
    \di_i[39]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(out[4]),
        .I2(idle_o),
        .I3(out[8]),
        .I4(\di_i[38]_i_3_n_0 ),
        .I5(out[2]),
        .O(\di_i_reg[39] ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [0]),
        .Q(\di_reg_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[10] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [10]),
        .Q(\di_reg_reg_n_0_[10] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[11] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [11]),
        .Q(\di_reg_reg_n_0_[11] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[12] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [12]),
        .Q(\di_reg_reg_n_0_[12] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[13] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [13]),
        .Q(\di_reg_reg_n_0_[13] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[14] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [14]),
        .Q(\di_reg_reg_n_0_[14] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[15] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [15]),
        .Q(\di_reg_reg_n_0_[15] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[16] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [16]),
        .Q(\di_reg_reg_n_0_[16] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[17] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [17]),
        .Q(\di_reg_reg_n_0_[17] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[18] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [18]),
        .Q(\di_reg_reg_n_0_[18] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[19] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [19]),
        .Q(\di_reg_reg_n_0_[19] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [1]),
        .Q(\di_reg_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[20] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [20]),
        .Q(\di_reg_reg_n_0_[20] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[21] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [21]),
        .Q(\di_reg_reg_n_0_[21] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[22] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [22]),
        .Q(\di_reg_reg_n_0_[22] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[23] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [23]),
        .Q(\di_reg_reg_n_0_[23] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[24] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [24]),
        .Q(\di_reg_reg_n_0_[24] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[25] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [25]),
        .Q(\di_reg_reg_n_0_[25] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[26] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [26]),
        .Q(\di_reg_reg_n_0_[26] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[27] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [27]),
        .Q(\di_reg_reg_n_0_[27] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[28] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [28]),
        .Q(\di_reg_reg_n_0_[28] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[29] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [29]),
        .Q(\di_reg_reg_n_0_[29] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [2]),
        .Q(\di_reg_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[30] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [30]),
        .Q(\di_reg_reg_n_0_[30] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[31] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [31]),
        .Q(\di_reg_reg_n_0_[31] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[32] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [32]),
        .Q(\di_reg_reg_n_0_[32] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[33] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [33]),
        .Q(\di_reg_reg_n_0_[33] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[34] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [34]),
        .Q(\di_reg_reg_n_0_[34] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[35] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [35]),
        .Q(\di_reg_reg_n_0_[35] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[36] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [36]),
        .Q(\di_reg_reg_n_0_[36] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[37] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [37]),
        .Q(\di_reg_reg_n_0_[37] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[38] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [38]),
        .Q(\di_reg_reg_n_0_[38] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[39] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [39]),
        .Q(p_1_in),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [3]),
        .Q(\di_reg_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [4]),
        .Q(\di_reg_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [5]),
        .Q(\di_reg_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [6]),
        .Q(\di_reg_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [7]),
        .Q(\di_reg_reg_n_0_[7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[8] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [8]),
        .Q(\di_reg_reg_n_0_[8] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg_reg[9] 
       (.C(clkb_OBUF_BUFG),
        .CE(wren_i_reg_0),
        .D(\di_i_reg[39]_0 [9]),
        .Q(\di_reg_reg_n_0_[9] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    di_req_o_A_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(di_req_reg),
        .Q(di_req_o_A),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    di_req_o_B_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(di_req_o_A),
        .Q(di_req_o_B),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    di_req_o_C_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(di_req_o_B),
        .Q(di_req_o_C),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    di_req_o_D_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(di_req_o_C),
        .Q(di_req_o_D),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h40)) 
    di_req_o_reg_i_1
       (.I0(di_req_o_D),
        .I1(di_req_o_A),
        .I2(di_req_o_B),
        .O(di_req_o_next));
  FDRE #(
    .INIT(1'b1)) 
    di_req_o_reg_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(di_req_o_next),
        .Q(di_req_o),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h3F0F0FAF000000A0)) 
    di_req_reg_i_1
       (.I0(di_req_reg_i_2_n_0),
        .I1(wr_ack_reg_i_2_n_0),
        .I2(core_ce_reg_n_0),
        .I3(\sh_reg[39]_i_4_n_0 ),
        .I4(\state_reg_reg_n_0_[5] ),
        .I5(di_req_reg),
        .O(di_req_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    di_req_reg_i_2
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\state_reg_reg_n_0_[2] ),
        .O(di_req_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    di_req_reg_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(di_req_reg_i_1_n_0),
        .Q(di_req_reg),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000000054)) 
    \din[31]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\addr[5]_i_6_n_0 ),
        .I2(\addr[5]_i_5_n_0 ),
        .I3(out[5]),
        .I4(out[10]),
        .I5(out[12]),
        .O(\din_reg[31] ));
  LUT3 #(
    .INIT(8'h0E)) 
    \din[31]_i_2 
       (.I0(\addr[5]_i_5_n_0 ),
        .I1(\addr[5]_i_6_n_0 ),
        .I2(\delay_reg[6] ),
        .O(\din_reg[0] ));
  LUT3 #(
    .INIT(8'h08)) 
    \do_buffer_reg[31]_i_1 
       (.I0(core_ce_reg_n_0),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(mosi_OBUF_inst_i_2_n_0),
        .O(\do_buffer_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[0]),
        .Q(\din_reg[31]_0 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[10] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[10]),
        .Q(\din_reg[31]_0 [10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[11] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[11]),
        .Q(\din_reg[31]_0 [11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[12] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[12]),
        .Q(\din_reg[31]_0 [12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[13] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[13]),
        .Q(\din_reg[31]_0 [13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[14] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[14]),
        .Q(\din_reg[31]_0 [14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[15] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[15]),
        .Q(\din_reg[31]_0 [15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[16] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[16]),
        .Q(\din_reg[31]_0 [16]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[17] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[17]),
        .Q(\din_reg[31]_0 [17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[18] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[18]),
        .Q(\din_reg[31]_0 [18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[19] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[19]),
        .Q(\din_reg[31]_0 [19]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[1]),
        .Q(\din_reg[31]_0 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[20] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[20]),
        .Q(\din_reg[31]_0 [20]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[21] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[21]),
        .Q(\din_reg[31]_0 [21]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[22] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[22]),
        .Q(\din_reg[31]_0 [22]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[23] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[23]),
        .Q(\din_reg[31]_0 [23]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[24] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[24]),
        .Q(\din_reg[31]_0 [24]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[25] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[25]),
        .Q(\din_reg[31]_0 [25]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[26] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[26]),
        .Q(\din_reg[31]_0 [26]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[27] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[27]),
        .Q(\din_reg[31]_0 [27]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[28] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[28]),
        .Q(\din_reg[31]_0 [28]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[29] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[29]),
        .Q(\din_reg[31]_0 [29]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[2]),
        .Q(\din_reg[31]_0 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[30] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[30]),
        .Q(\din_reg[31]_0 [30]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[31] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[31]),
        .Q(\din_reg[31]_0 [31]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[3]),
        .Q(\din_reg[31]_0 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[4]),
        .Q(\din_reg[31]_0 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[5]),
        .Q(\din_reg[31]_0 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[6]),
        .Q(\din_reg[31]_0 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[7]),
        .Q(\din_reg[31]_0 [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[8] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[8]),
        .Q(\din_reg[31]_0 [8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \do_buffer_reg_reg[9] 
       (.C(clkb_OBUF_BUFG),
        .CE(\do_buffer_reg[31]_i_1_n_0 ),
        .D(data0[9]),
        .Q(\din_reg[31]_0 [9]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    do_transfer_reg_i_1
       (.I0(\state_reg_reg_n_0_[5] ),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(\state_reg_reg_n_0_[4] ),
        .I3(\state_reg_reg_n_0_[3] ),
        .I4(do_transfer_reg_0),
        .I5(do_transfer_reg),
        .O(do_transfer_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h30F030E030C030E0)) 
    do_transfer_reg_i_2
       (.I0(\state_reg_reg_n_0_[0] ),
        .I1(\sh_reg[39]_i_4_n_0 ),
        .I2(core_ce_reg_n_0),
        .I3(\state_reg_reg_n_0_[5] ),
        .I4(\state_reg_reg_n_0_[1] ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(do_transfer_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    do_transfer_reg_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(do_transfer_reg_i_1_n_0),
        .Q(do_transfer_reg),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    do_valid_A_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(do_transfer_reg),
        .Q(do_valid_A),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    do_valid_B_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(do_valid_A),
        .Q(do_valid_B),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    do_valid_C_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(do_valid_B),
        .Q(do_valid_C),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    do_valid_D_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(do_valid_C),
        .Q(do_valid_D),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h40)) 
    do_valid_o_reg_i_1
       (.I0(do_valid_D),
        .I1(do_valid_A),
        .I2(do_valid_B),
        .O(do_valid_next));
  FDRE #(
    .INIT(1'b0)) 
    do_valid_o_reg_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(do_valid_next),
        .Q(do_valid_o),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    idle_o_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(csn_OBUF),
        .Q(idle_o),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    mosi_OBUF_inst_i_1
       (.I0(\sh_reg_reg_n_0_[39] ),
        .I1(wren_reg_n_0),
        .I2(mosi_OBUF_inst_i_2_n_0),
        .I3(\state_reg_reg_n_0_[0] ),
        .I4(p_1_in),
        .O(mosi_OBUF));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    mosi_OBUF_inst_i_2
       (.I0(\state_reg_reg_n_0_[5] ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(\state_reg_reg_n_0_[2] ),
        .I3(\state_reg_reg_n_0_[4] ),
        .I4(\state_reg_reg_n_0_[3] ),
        .O(mosi_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'h77737772)) 
    \p_chip[0]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_chip_reg[5]_1 [0]),
        .I2(\FSM_onehot_state_reg[1]_1 ),
        .I3(\p_chip[0]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg[8] ),
        .O(\p_chip_reg[7] [0]));
  LUT6 #(
    .INIT(64'h00F2002288FAF8FA)) 
    \p_chip[0]_i_3 
       (.I0(out[11]),
        .I1(\p_rreg[7]_i_3_n_0 ),
        .I2(out[3]),
        .I3(\p_chip_reg[5]_1 [0]),
        .I4(\p_rchip[7]_i_5_n_0 ),
        .I5(\numchips_reg[1]_0 [0]),
        .O(\p_chip[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD7D7D7C3D7D7D782)) 
    \p_chip[1]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_chip_reg[5]_1 [0]),
        .I2(\p_chip_reg[5]_1 [1]),
        .I3(\FSM_onehot_state_reg[1]_2 ),
        .I4(\p_chip[1]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg[8] ),
        .O(\p_chip_reg[7] [1]));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_chip[1]_i_3 
       (.I0(out[11]),
        .I1(\p_rreg[7]_i_3_n_0 ),
        .I2(out[3]),
        .I3(\p_chip_reg[1]_0 ),
        .I4(\p_rchip[7]_i_5_n_0 ),
        .I5(\numchips_reg[0] ),
        .O(\p_chip[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFD57FC03FD57A802)) 
    \p_chip[2]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_chip_reg[5]_1 [1]),
        .I2(\p_chip_reg[5]_1 [0]),
        .I3(\p_chip_reg[5]_1 [2]),
        .I4(\p_chip[2]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg[8] ),
        .O(\p_chip_reg[7] [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEAEAAAA)) 
    \p_chip[2]_i_2 
       (.I0(\p_chip[2]_i_3_n_0 ),
        .I1(\p_chip_reg[2] ),
        .I2(\p_rreg[7]_i_3_n_0 ),
        .I3(\numchips_reg[1] ),
        .I4(out[11]),
        .I5(\FSM_onehot_state_reg[1]_0 ),
        .O(\p_chip[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB000800000000)) 
    \p_chip[2]_i_3 
       (.I0(\numchips_reg[1] ),
        .I1(di_req_o),
        .I2(\p_chip_reg[1] ),
        .I3(\p_chip_reg[5]_0 ),
        .I4(\p_chip_reg[2] ),
        .I5(out[3]),
        .O(\p_chip[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD7D7D7C3D7D7D782)) 
    \p_chip[3]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_chip_reg[1]_1 ),
        .I2(\p_chip_reg[5]_1 [3]),
        .I3(\FSM_onehot_state_reg[1]_3 ),
        .I4(\p_chip[3]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg[8] ),
        .O(\p_chip_reg[7] [3]));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_chip[3]_i_3 
       (.I0(out[11]),
        .I1(\p_rreg[7]_i_3_n_0 ),
        .I2(out[3]),
        .I3(\p_chip_reg[3]_0 ),
        .I4(\p_rchip[7]_i_5_n_0 ),
        .I5(\numchips_reg[2] ),
        .O(\p_chip[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFD57FC03FD57A802)) 
    \p_chip[4]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_chip_reg[5]_1 [3]),
        .I2(\p_chip_reg[1]_1 ),
        .I3(\p_chip_reg[5]_1 [4]),
        .I4(\p_chip[4]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg[8] ),
        .O(\p_chip_reg[7] [4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEAEAAAA)) 
    \p_chip[4]_i_3 
       (.I0(\p_chip[4]_i_4_n_0 ),
        .I1(\p_chip_reg[4] ),
        .I2(\p_rreg[7]_i_3_n_0 ),
        .I3(\numchips_reg[3] ),
        .I4(out[11]),
        .I5(\FSM_onehot_state_reg[1] ),
        .O(\p_chip[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB000800000000)) 
    \p_chip[4]_i_4 
       (.I0(\numchips_reg[3] ),
        .I1(di_req_o),
        .I2(\p_chip_reg[1] ),
        .I3(\p_chip_reg[5]_0 ),
        .I4(\p_chip_reg[4] ),
        .I5(out[3]),
        .O(\p_chip[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD7D7D7C3D7D7D782)) 
    \p_chip[5]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_chip_reg[1]_2 ),
        .I2(\p_chip_reg[5]_1 [5]),
        .I3(\FSM_onehot_state_reg[1]_4 ),
        .I4(\p_chip[5]_i_4_n_0 ),
        .I5(\FSM_onehot_state_reg[8] ),
        .O(\p_chip_reg[7] [5]));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_chip[5]_i_4 
       (.I0(out[11]),
        .I1(\p_rreg[7]_i_3_n_0 ),
        .I2(out[3]),
        .I3(\p_chip_reg[5] ),
        .I4(\p_rchip[7]_i_5_n_0 ),
        .I5(\numchips_reg[4] ),
        .O(\p_chip[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h77737772)) 
    \p_chip[6]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_chip_reg[5]_2 ),
        .I2(\FSM_onehot_state_reg[1]_5 ),
        .I3(\p_chip[6]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg[8] ),
        .O(\p_chip_reg[7] [6]));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_chip[6]_i_4 
       (.I0(out[11]),
        .I1(\p_rreg[7]_i_3_n_0 ),
        .I2(out[3]),
        .I3(\p_chip_reg[6] ),
        .I4(\p_rchip[7]_i_5_n_0 ),
        .I5(\numchips_reg[5] ),
        .O(\p_chip[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF80)) 
    \p_chip[7]_i_1 
       (.I0(out[9]),
        .I1(\p_chip_reg[4]_0 ),
        .I2(di_req_o),
        .I3(\p_rchip[7]_i_3_n_0 ),
        .I4(\p_chip[7]_i_4_n_0 ),
        .I5(\delay_reg[6] ),
        .O(\p_chip_reg[0] ));
  LUT5 #(
    .INIT(32'h77737772)) 
    \p_chip[7]_i_2 
       (.I0(\delay_reg[6] ),
        .I1(\p_chip_reg[6]_0 ),
        .I2(\FSM_onehot_state_reg[1]_6 ),
        .I3(\p_chip[7]_i_7_n_0 ),
        .I4(\FSM_onehot_state_reg[8] ),
        .O(\p_chip_reg[7] [7]));
  LUT6 #(
    .INIT(64'hCC40FFFFCC40CC40)) 
    \p_chip[7]_i_4 
       (.I0(wren_i_reg_0),
        .I1(di_req_o),
        .I2(out[5]),
        .I3(out[3]),
        .I4(\memreal_reg[0][1]_0 ),
        .I5(out[1]),
        .O(\p_chip[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_chip[7]_i_7 
       (.I0(out[11]),
        .I1(\p_rreg[7]_i_3_n_0 ),
        .I2(out[3]),
        .I3(\p_chip_reg[7]_0 ),
        .I4(\p_rchip[7]_i_5_n_0 ),
        .I5(\numchips_reg[6] ),
        .O(\p_chip[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h77737772)) 
    \p_rchip[0]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_rchip_reg[7]_0 [0]),
        .I2(\p_rchip[0]_i_2_n_0 ),
        .I3(\p_rchip[0]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg[12] ),
        .O(\p_rchip_reg[7] [0]));
  LUT6 #(
    .INIT(64'h00F2002288FAF8FA)) 
    \p_rchip[0]_i_2 
       (.I0(out[3]),
        .I1(\p_rchip[7]_i_5_n_0 ),
        .I2(out[7]),
        .I3(\numchips_reg[1]_0 [0]),
        .I4(\memreal_reg[0][0] ),
        .I5(\p_rchip_reg[7]_0 [0]),
        .O(\p_rchip[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1D00)) 
    \p_rchip[0]_i_3 
       (.I0(\p_rchip_reg[7]_0 [0]),
        .I1(\p_rreg[7]_i_3_n_0 ),
        .I2(\numchips_reg[1]_0 [0]),
        .I3(out[11]),
        .O(\p_rchip[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD7D7D7C3D7D7D782)) 
    \p_rchip[1]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_rchip_reg[7]_0 [0]),
        .I2(\p_rchip_reg[7]_0 [1]),
        .I3(\p_rchip[1]_i_2_n_0 ),
        .I4(\p_rchip[1]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg[12] ),
        .O(\p_rchip_reg[7] [1]));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_rchip[1]_i_2 
       (.I0(out[3]),
        .I1(\p_rchip[7]_i_5_n_0 ),
        .I2(out[7]),
        .I3(\numchips_reg[0] ),
        .I4(\memreal_reg[0][0] ),
        .I5(\p_rchip_reg[1] ),
        .O(\p_rchip[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF90909F900000000)) 
    \p_rchip[1]_i_3 
       (.I0(\p_rchip_reg[7]_0 [0]),
        .I1(\p_rchip_reg[7]_0 [1]),
        .I2(\p_rreg[7]_i_3_n_0 ),
        .I3(\numchips_reg[1]_0 [1]),
        .I4(\numchips_reg[1]_0 [0]),
        .I5(out[11]),
        .O(\p_rchip[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFD57FC03FD57A802)) 
    \p_rchip[2]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_rchip_reg[7]_0 [0]),
        .I2(\p_rchip_reg[7]_0 [1]),
        .I3(\p_rchip_reg[7]_0 [2]),
        .I4(\p_rchip[2]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg[12] ),
        .O(\p_rchip_reg[7] [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8A80)) 
    \p_rchip[2]_i_2 
       (.I0(out[11]),
        .I1(\numchips_reg[1] ),
        .I2(\p_rreg[7]_i_3_n_0 ),
        .I3(\p_rchip_reg[2] ),
        .I4(\p_rchip_reg[0]_0 ),
        .I5(\p_rchip[2]_i_6_n_0 ),
        .O(\p_rchip[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB000800000000)) 
    \p_rchip[2]_i_6 
       (.I0(\numchips_reg[1] ),
        .I1(di_req_o),
        .I2(\p_chip_reg[1] ),
        .I3(\p_chip_reg[5]_0 ),
        .I4(\p_rchip_reg[2] ),
        .I5(out[3]),
        .O(\p_rchip[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7773737377727272)) 
    \p_rchip[3]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_rchip_reg[2]_0 ),
        .I2(\p_rchip[3]_i_3_n_0 ),
        .I3(\p_rchip[3]_i_4_n_0 ),
        .I4(out[11]),
        .I5(\FSM_onehot_state_reg[12] ),
        .O(\p_rchip_reg[7] [3]));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_rchip[3]_i_3 
       (.I0(out[3]),
        .I1(\p_rchip[7]_i_5_n_0 ),
        .I2(out[7]),
        .I3(\numchips_reg[2] ),
        .I4(\memreal_reg[0][0] ),
        .I5(\p_rchip_reg[3]_0 ),
        .O(\p_rchip[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \p_rchip[3]_i_4 
       (.I0(\numchips_reg[2] ),
        .I1(\p_rreg[7]_i_3_n_0 ),
        .I2(\p_rchip_reg[7]_0 [3]),
        .I3(\p_rchip_reg[7]_0 [0]),
        .I4(\p_rchip_reg[7]_0 [1]),
        .I5(\p_rchip_reg[7]_0 [2]),
        .O(\p_rchip[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFD57FC03FD57A802)) 
    \p_rchip[4]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_rchip_reg[7]_0 [3]),
        .I2(\p_rchip_reg[0]_1 ),
        .I3(\p_rchip_reg[7]_0 [4]),
        .I4(\p_rchip[4]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg[12] ),
        .O(\p_rchip_reg[7] [4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8A80)) 
    \p_rchip[4]_i_3 
       (.I0(out[11]),
        .I1(\numchips_reg[3] ),
        .I2(\p_rreg[7]_i_3_n_0 ),
        .I3(\p_rchip_reg[4] ),
        .I4(\FSM_onehot_state_reg[7]_0 ),
        .I5(\p_rchip[4]_i_7_n_0 ),
        .O(\p_rchip[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB000800000000)) 
    \p_rchip[4]_i_7 
       (.I0(\numchips_reg[3] ),
        .I1(di_req_o),
        .I2(\p_chip_reg[1] ),
        .I3(\p_chip_reg[5]_0 ),
        .I4(\p_rchip_reg[4] ),
        .I5(out[3]),
        .O(\p_rchip[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD7D7D7C3D7D7D782)) 
    \p_rchip[5]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_rchip_reg[3] ),
        .I2(\p_rchip_reg[7]_0 [5]),
        .I3(\p_rchip[5]_i_3_n_0 ),
        .I4(\p_rchip[5]_i_4_n_0 ),
        .I5(\FSM_onehot_state_reg[12] ),
        .O(\p_rchip_reg[7] [5]));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_rchip[5]_i_3 
       (.I0(out[3]),
        .I1(\p_rchip[7]_i_5_n_0 ),
        .I2(out[7]),
        .I3(\numchips_reg[4] ),
        .I4(\memreal_reg[0][0] ),
        .I5(\p_rchip_reg[5] ),
        .O(\p_rchip[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \p_rchip[5]_i_4 
       (.I0(\p_rchip_reg[5] ),
        .I1(\p_rreg[7]_i_3_n_0 ),
        .I2(\numchips_reg[4] ),
        .I3(out[11]),
        .O(\p_rchip[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h77737772)) 
    \p_rchip[6]_i_1 
       (.I0(\delay_reg[6] ),
        .I1(\p_rchip_reg[5]_1 ),
        .I2(\p_rchip[6]_i_3_n_0 ),
        .I3(\p_rchip[6]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg[12] ),
        .O(\p_rchip_reg[7] [6]));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_rchip[6]_i_3 
       (.I0(out[3]),
        .I1(\p_rchip[7]_i_5_n_0 ),
        .I2(out[7]),
        .I3(\numchips_reg[5] ),
        .I4(\memreal_reg[0][0] ),
        .I5(\p_rchip_reg[6]_1 ),
        .O(\p_rchip[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \p_rchip[6]_i_4 
       (.I0(\p_rchip_reg[6]_1 ),
        .I1(\p_rreg[7]_i_3_n_0 ),
        .I2(\numchips_reg[5] ),
        .I3(out[11]),
        .O(\p_rchip[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFEFEE)) 
    \p_rchip[7]_i_1 
       (.I0(\p_rchip[7]_i_3_n_0 ),
        .I1(\p_rchip[7]_i_4_n_0 ),
        .I2(\p_rchip[7]_i_5_n_0 ),
        .I3(out[3]),
        .I4(\p_rchip[7]_i_6_n_0 ),
        .I5(\delay_reg[6] ),
        .O(\p_rchip_reg[0] ));
  LUT6 #(
    .INIT(64'hD7D7D7C3D7D7D782)) 
    \p_rchip[7]_i_2 
       (.I0(\delay_reg[6] ),
        .I1(\p_rchip_reg[5]_0 ),
        .I2(\p_rchip_reg[7]_0 [7]),
        .I3(\p_rchip[7]_i_8_n_0 ),
        .I4(\p_rchip[7]_i_9_n_0 ),
        .I5(\FSM_onehot_state_reg[12] ),
        .O(\p_rchip_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \p_rchip[7]_i_3 
       (.I0(out[11]),
        .I1(\p_rreg[7]_i_3_n_0 ),
        .I2(out[7]),
        .I3(\memreal_reg[0][0] ),
        .O(\p_rchip[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAE00AE00AE00AA00)) 
    \p_rchip[7]_i_4 
       (.I0(out[10]),
        .I1(out[12]),
        .I2(\p_rreg_reg[7] ),
        .I3(do_valid_o),
        .I4(\p_rreg_reg[1] ),
        .I5(\p_rreg_reg[4] ),
        .O(\p_rchip[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \p_rchip[7]_i_5 
       (.I0(\p_chip_reg[5]_1 [5]),
        .I1(\p_chip_reg[5]_1 [3]),
        .I2(\p_chip_reg[5]_1 [4]),
        .I3(\p_chip_reg[1] ),
        .I4(di_req_o),
        .O(\p_rchip[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FE0000000000)) 
    \p_rchip[7]_i_6 
       (.I0(\p_rchip_reg[7]_0 [5]),
        .I1(\p_rchip_reg[7]_0 [6]),
        .I2(\p_rchip_reg[3] ),
        .I3(do_valid_o),
        .I4(\p_rchip_reg[7]_0 [7]),
        .I5(out[5]),
        .O(\p_rchip[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_rchip[7]_i_8 
       (.I0(out[3]),
        .I1(\p_rchip[7]_i_5_n_0 ),
        .I2(out[7]),
        .I3(\numchips_reg[6] ),
        .I4(\memreal_reg[0][0] ),
        .I5(\p_rchip_reg[7]_1 ),
        .O(\p_rchip[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \p_rchip[7]_i_9 
       (.I0(\p_rchip_reg[7]_1 ),
        .I1(\p_rreg[7]_i_3_n_0 ),
        .I2(\numchips_reg[6] ),
        .I3(out[11]),
        .O(\p_rchip[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000F888)) 
    \p_rreg[7]_i_1 
       (.I0(\memreal_reg[0][0] ),
        .I1(out[7]),
        .I2(\p_rreg[7]_i_3_n_0 ),
        .I3(out[11]),
        .I4(\delay_reg[6] ),
        .O(\p_reg_reg[0] ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \p_rreg[7]_i_3 
       (.I0(\p_reg_reg[4] ),
        .I1(\p_reg_reg[1] ),
        .I2(\p_reg_reg[5] ),
        .I3(\p_reg_reg[7] ),
        .I4(idle_o),
        .O(\p_rreg[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    rx_bit_reg_i_1
       (.I0(miso_IBUF),
        .I1(core_n_ce_reg_n_0),
        .I2(data0[0]),
        .O(rx_bit_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_bit_reg_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(rx_bit_reg_i_1_n_0),
        .Q(data0[0]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    sck_ena_reg_i_1
       (.I0(wren_reg_n_0),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\state_reg_reg_n_0_[5] ),
        .I3(sck_ena_reg_1),
        .I4(sck_ena_reg),
        .O(sck_ena_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000300000000)) 
    sck_ena_reg_i_2
       (.I0(\state_reg_reg_n_0_[0] ),
        .I1(\state_reg_reg_n_0_[5] ),
        .I2(\state_reg[5]_i_2_n_0 ),
        .I3(\state_reg_reg_n_0_[4] ),
        .I4(\state_reg_reg_n_0_[3] ),
        .I5(core_n_ce_reg_n_0),
        .O(sck_ena_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    sck_ena_reg_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(sck_ena_reg_i_1_n_0),
        .Q(sck_ena_reg),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[0]_i_1 
       (.I0(data0[0]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[0] ),
        .O(\sh_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[10]_i_1 
       (.I0(data0[10]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[10] ),
        .O(\sh_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[11]_i_1 
       (.I0(data0[11]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[11] ),
        .O(\sh_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[12]_i_1 
       (.I0(data0[12]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[12] ),
        .O(\sh_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[13]_i_1 
       (.I0(data0[13]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[13] ),
        .O(\sh_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[14]_i_1 
       (.I0(data0[14]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[14] ),
        .O(\sh_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[15]_i_1 
       (.I0(data0[15]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[15] ),
        .O(\sh_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[16]_i_1 
       (.I0(data0[16]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[16] ),
        .O(\sh_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[17]_i_1 
       (.I0(data0[17]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[17] ),
        .O(\sh_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[18]_i_1 
       (.I0(data0[18]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[18] ),
        .O(\sh_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[19]_i_1 
       (.I0(data0[19]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[19] ),
        .O(\sh_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[1]_i_1 
       (.I0(data0[1]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[1] ),
        .O(\sh_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[20]_i_1 
       (.I0(data0[20]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[20] ),
        .O(\sh_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[21]_i_1 
       (.I0(data0[21]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[21] ),
        .O(\sh_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[22]_i_1 
       (.I0(data0[22]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[22] ),
        .O(\sh_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[23]_i_1 
       (.I0(data0[23]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[23] ),
        .O(\sh_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[24]_i_1 
       (.I0(data0[24]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[24] ),
        .O(\sh_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[25]_i_1 
       (.I0(data0[25]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[25] ),
        .O(\sh_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[26]_i_1 
       (.I0(data0[26]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[26] ),
        .O(\sh_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[27]_i_1 
       (.I0(data0[27]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[27] ),
        .O(\sh_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[28]_i_1 
       (.I0(data0[28]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[28] ),
        .O(\sh_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[29]_i_1 
       (.I0(data0[29]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[29] ),
        .O(\sh_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[2]_i_1 
       (.I0(data0[2]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[2] ),
        .O(\sh_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[30]_i_1 
       (.I0(data0[30]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[30] ),
        .O(\sh_reg[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[31]_i_1 
       (.I0(data0[31]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[31] ),
        .O(\sh_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[32]_i_1 
       (.I0(data0[32]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[32] ),
        .O(\sh_reg[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[33]_i_1 
       (.I0(data0[33]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[33] ),
        .O(\sh_reg[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[34]_i_1 
       (.I0(data0[34]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[34] ),
        .O(\sh_reg[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[35]_i_1 
       (.I0(data0[35]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[35] ),
        .O(\sh_reg[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[36]_i_1 
       (.I0(data0[36]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[36] ),
        .O(\sh_reg[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[37]_i_1 
       (.I0(data0[37]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[37] ),
        .O(\sh_reg[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[38]_i_1 
       (.I0(data0[38]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[38] ),
        .O(\sh_reg[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAFFAABBAAFAAA)) 
    \sh_reg[39]_i_1 
       (.I0(\sh_reg[39]_i_3_n_0 ),
        .I1(\state_reg_reg_n_0_[5] ),
        .I2(wren_reg_n_0),
        .I3(core_ce_reg_n_0),
        .I4(\sh_reg[39]_i_4_n_0 ),
        .I5(\sh_reg[39]_i_5_n_0 ),
        .O(\sh_reg[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[39]_i_2 
       (.I0(data0[39]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(p_1_in),
        .O(\sh_reg[39]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \sh_reg[39]_i_3 
       (.I0(\state_reg_reg_n_0_[3] ),
        .I1(core_ce_reg_n_0),
        .I2(\state_reg_reg_n_0_[4] ),
        .I3(\state_reg_reg_n_0_[2] ),
        .I4(\state_reg_reg_n_0_[1] ),
        .I5(\state_reg_reg_n_0_[0] ),
        .O(\sh_reg[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sh_reg[39]_i_4 
       (.I0(\state_reg_reg_n_0_[3] ),
        .I1(\state_reg_reg_n_0_[4] ),
        .O(\sh_reg[39]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \sh_reg[39]_i_5 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(\state_reg_reg_n_0_[5] ),
        .O(\sh_reg[39]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[3]_i_1 
       (.I0(data0[3]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[3] ),
        .O(\sh_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[4]_i_1 
       (.I0(data0[4]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[4] ),
        .O(\sh_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[5]_i_1 
       (.I0(data0[5]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[5] ),
        .O(\sh_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[6]_i_1 
       (.I0(data0[6]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[6] ),
        .O(\sh_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[7]_i_1 
       (.I0(data0[7]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[7] ),
        .O(\sh_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[8]_i_1 
       (.I0(data0[8]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[8] ),
        .O(\sh_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sh_reg[9]_i_1 
       (.I0(data0[9]),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(\di_reg_reg_n_0_[9] ),
        .O(\sh_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[0]_i_1_n_0 ),
        .Q(data0[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[10] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[10]_i_1_n_0 ),
        .Q(data0[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[11] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[11]_i_1_n_0 ),
        .Q(data0[12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[12] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[12]_i_1_n_0 ),
        .Q(data0[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[13] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[13]_i_1_n_0 ),
        .Q(data0[14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[14] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[14]_i_1_n_0 ),
        .Q(data0[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[15] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[15]_i_1_n_0 ),
        .Q(data0[16]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[16] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[16]_i_1_n_0 ),
        .Q(data0[17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[17] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[17]_i_1_n_0 ),
        .Q(data0[18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[18] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[18]_i_1_n_0 ),
        .Q(data0[19]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[19] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[19]_i_1_n_0 ),
        .Q(data0[20]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[1]_i_1_n_0 ),
        .Q(data0[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[20] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[20]_i_1_n_0 ),
        .Q(data0[21]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[21] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[21]_i_1_n_0 ),
        .Q(data0[22]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[22] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[22]_i_1_n_0 ),
        .Q(data0[23]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[23] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[23]_i_1_n_0 ),
        .Q(data0[24]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[24] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[24]_i_1_n_0 ),
        .Q(data0[25]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[25] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[25]_i_1_n_0 ),
        .Q(data0[26]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[26] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[26]_i_1_n_0 ),
        .Q(data0[27]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[27] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[27]_i_1_n_0 ),
        .Q(data0[28]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[28] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[28]_i_1_n_0 ),
        .Q(data0[29]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[29] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[29]_i_1_n_0 ),
        .Q(data0[30]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[2]_i_1_n_0 ),
        .Q(data0[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[30] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[30]_i_1_n_0 ),
        .Q(data0[31]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[31] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[31]_i_1_n_0 ),
        .Q(data0[32]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[32] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[32]_i_1_n_0 ),
        .Q(data0[33]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[33] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[33]_i_1_n_0 ),
        .Q(data0[34]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[34] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[34]_i_1_n_0 ),
        .Q(data0[35]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[35] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[35]_i_1_n_0 ),
        .Q(data0[36]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[36] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[36]_i_1_n_0 ),
        .Q(data0[37]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[37] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[37]_i_1_n_0 ),
        .Q(data0[38]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[38] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[38]_i_1_n_0 ),
        .Q(data0[39]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[39] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[39]_i_2_n_0 ),
        .Q(\sh_reg_reg_n_0_[39] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[3]_i_1_n_0 ),
        .Q(data0[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[4]_i_1_n_0 ),
        .Q(data0[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[5]_i_1_n_0 ),
        .Q(data0[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[6]_i_1_n_0 ),
        .Q(data0[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[7]_i_1_n_0 ),
        .Q(data0[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[8] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[8]_i_1_n_0 ),
        .Q(data0[9]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sh_reg_reg[9] 
       (.C(clkb_OBUF_BUFG),
        .CE(\sh_reg[39]_i_1_n_0 ),
        .D(\sh_reg[9]_i_1_n_0 ),
        .Q(data0[10]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h1000)) 
    spi_2x_ce_i_1
       (.I0(clk_cnt[0]),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[3]),
        .I3(clk_cnt[2]),
        .O(spi_2x_ce_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    spi_2x_ce_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(spi_2x_ce_i_1_n_0),
        .Q(spi_2x_ce),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    spi_clk_reg_i_1
       (.I0(core_n_clk),
        .I1(sck_ena_reg),
        .O(spi_clk_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_clk_reg_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(spi_clk_reg_i_1_n_0),
        .Q(sclk_OBUF),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    ssel_ena_reg_i_1
       (.I0(\state_reg_reg_n_0_[5] ),
        .I1(wren_reg_n_0),
        .I2(ssel_ena_reg_2),
        .I3(ssel_ena_reg),
        .O(ssel_ena_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0200000000010000)) 
    ssel_ena_reg_i_2
       (.I0(\state_reg_reg_n_0_[5] ),
        .I1(\state_reg[5]_i_2_n_0 ),
        .I2(\state_reg_reg_n_0_[4] ),
        .I3(\state_reg_reg_n_0_[3] ),
        .I4(core_ce_reg_n_0),
        .I5(\state_reg_reg_n_0_[0] ),
        .O(ssel_ena_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    ssel_ena_reg_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(ssel_ena_reg_i_1_n_0),
        .Q(ssel_ena_reg),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h010105050F0F0F0E)) 
    \state_reg[0]_i_1 
       (.I0(\state_reg_reg_n_0_[4] ),
        .I1(\state_reg[5]_i_2_n_0 ),
        .I2(\state_reg_reg_n_0_[0] ),
        .I3(wren_reg_n_0),
        .I4(\state_reg_reg_n_0_[3] ),
        .I5(\state_reg_reg_n_0_[5] ),
        .O(state_next[0]));
  LUT6 #(
    .INIT(64'h5005700750077006)) 
    \state_reg[1]_i_1 
       (.I0(\state_reg_reg_n_0_[5] ),
        .I1(\state_reg_reg_n_0_[4] ),
        .I2(\state_reg_reg_n_0_[1] ),
        .I3(\state_reg_reg_n_0_[0] ),
        .I4(\state_reg_reg_n_0_[3] ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(state_next[1]));
  LUT6 #(
    .INIT(64'h0F0A00153F2A0014)) 
    \state_reg[2]_i_1 
       (.I0(\state_reg_reg_n_0_[0] ),
        .I1(\state_reg_reg_n_0_[4] ),
        .I2(\state_reg_reg_n_0_[5] ),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(\state_reg_reg_n_0_[2] ),
        .I5(\state_reg_reg_n_0_[3] ),
        .O(state_next[2]));
  LUT6 #(
    .INIT(64'h0A0A0A0A2B2A1514)) 
    \state_reg[3]_i_1 
       (.I0(\state_reg_reg_n_0_[3] ),
        .I1(\state_reg_reg_n_0_[4] ),
        .I2(\state_reg_reg_n_0_[5] ),
        .I3(wren_reg_n_0),
        .I4(\state_reg_reg_n_0_[0] ),
        .I5(\state_reg[5]_i_2_n_0 ),
        .O(state_next[3]));
  LUT6 #(
    .INIT(64'h00FF000000FE0100)) 
    \state_reg[4]_i_1 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(\state_reg_reg_n_0_[0] ),
        .I3(\state_reg_reg_n_0_[5] ),
        .I4(\state_reg_reg_n_0_[4] ),
        .I5(\state_reg_reg_n_0_[3] ),
        .O(state_next[4]));
  LUT6 #(
    .INIT(64'h030F030C00020002)) 
    \state_reg[5]_i_1 
       (.I0(wren_reg_n_0),
        .I1(\state_reg[5]_i_2_n_0 ),
        .I2(\state_reg_reg_n_0_[4] ),
        .I3(\state_reg_reg_n_0_[3] ),
        .I4(\state_reg_reg_n_0_[0] ),
        .I5(\state_reg_reg_n_0_[5] ),
        .O(state_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state_reg[5]_i_2 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(\state_reg_reg_n_0_[2] ),
        .O(\state_reg[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(core_ce_reg_n_0),
        .D(state_next[0]),
        .Q(\state_reg_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(core_ce_reg_n_0),
        .D(state_next[1]),
        .Q(\state_reg_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(core_ce_reg_n_0),
        .D(state_next[2]),
        .Q(\state_reg_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(core_ce_reg_n_0),
        .D(state_next[3]),
        .Q(\state_reg_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(core_ce_reg_n_0),
        .D(state_next[4]),
        .Q(\state_reg_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(core_ce_reg_n_0),
        .D(state_next[5]),
        .Q(\state_reg_reg_n_0_[5] ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFAAAB0000AAA8)) 
    we_i_1
       (.I0(we_i_2_n_0),
        .I1(\addr[5]_i_5_n_0 ),
        .I2(\addr[5]_i_6_n_0 ),
        .I3(out[0]),
        .I4(\delay_reg[6] ),
        .I5(web_OBUF),
        .O(we_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEFE)) 
    we_i_2
       (.I0(\p_rchip[7]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg[7] ),
        .I2(\p_rchip_reg[6]_0 ),
        .I3(\p_reg_reg[7]_0 ),
        .I4(out[11]),
        .I5(\FSM_onehot_state_reg[2]_0 ),
        .O(we_i_2_n_0));
  LUT6 #(
    .INIT(64'h22FF2FFF22002000)) 
    wr_ack_reg_i_1
       (.I0(wren_reg_n_0),
        .I1(mosi_OBUF_inst_i_2_n_0),
        .I2(wr_ack_reg_i_2_n_0),
        .I3(core_ce_reg_n_0),
        .I4(wr_ack_reg_i_3_n_0),
        .I5(wr_ack_o),
        .O(wr_ack_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h01)) 
    wr_ack_reg_i_2
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(\state_reg_reg_n_0_[4] ),
        .O(wr_ack_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    wr_ack_reg_i_3
       (.I0(\state_reg_reg_n_0_[4] ),
        .I1(\state_reg_reg_n_0_[3] ),
        .I2(\state_reg_reg_n_0_[5] ),
        .O(wr_ack_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wr_ack_reg_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(wr_ack_reg_i_1_n_0),
        .Q(wr_ack_o),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    wren_i_1
       (.I0(wr_ack_o),
        .I1(wren_reg_n_0),
        .I2(wren_i_reg_0),
        .O(wren_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    wren_i_i_1
       (.I0(wren_i),
        .I1(wren_i_i_3_n_0),
        .I2(\delay_reg[6] ),
        .I3(wren_i_reg_0),
        .O(wren_i_reg));
  LUT4 #(
    .INIT(16'hFF32)) 
    wren_i_i_2
       (.I0(out[2]),
        .I1(wr_ack_o),
        .I2(out[4]),
        .I3(wren_i_i_4_n_0),
        .O(wren_i));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    wren_i_i_3
       (.I0(out[4]),
        .I1(idle_o),
        .I2(out[2]),
        .I3(out[12]),
        .I4(out[9]),
        .I5(wren_i_i_5_n_0),
        .O(wren_i_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    wren_i_i_4
       (.I0(wr_ack_o),
        .I1(di_req_o),
        .I2(wren_i_reg_0),
        .I3(out[5]),
        .I4(out[8]),
        .O(wren_i_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA20)) 
    wren_i_i_5
       (.I0(out[5]),
        .I1(wren_i_reg_0),
        .I2(di_req_o),
        .I3(wr_ack_o),
        .I4(out[8]),
        .I5(out[0]),
        .O(wren_i_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wren_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(wren_i_1_n_0),
        .Q(wren_reg_n_0),
        .R(\<const0> ));
endmodule

module tmcspi
   (csn_OBUF,
    sclk_OBUF,
    web_OBUF,
    Q,
    dinb_OBUF,
    mosi_OBUF,
    SR,
    clkb_OBUF_BUFG,
    doutb_IBUF,
    miso_IBUF,
    resetn_IBUF,
    clkb_OBUF);
  output csn_OBUF;
  output sclk_OBUF;
  output [0:0]web_OBUF;
  output [5:0]Q;
  output [31:0]dinb_OBUF;
  output mosi_OBUF;
  output [0:0]SR;
  input clkb_OBUF_BUFG;
  input [31:0]doutb_IBUF;
  input miso_IBUF;
  input resetn_IBUF;
  input clkb_OBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[0]_i_4_n_0 ;
  wire \FSM_onehot_state[0]_i_5_n_0 ;
  wire \FSM_onehot_state[10]_i_2_n_0 ;
  wire \FSM_onehot_state[10]_i_3_n_0 ;
  wire \FSM_onehot_state[11]_i_3_n_0 ;
  wire \FSM_onehot_state[11]_i_4_n_0 ;
  wire \FSM_onehot_state[12]_i_10_n_0 ;
  wire \FSM_onehot_state[12]_i_11_n_0 ;
  wire \FSM_onehot_state[12]_i_12_n_0 ;
  wire \FSM_onehot_state[12]_i_3_n_0 ;
  wire \FSM_onehot_state[12]_i_5_n_0 ;
  wire \FSM_onehot_state[12]_i_6_n_0 ;
  wire \FSM_onehot_state[12]_i_9_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_4_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_2_n_0 ;
  wire \FSM_onehot_state[8]_i_4_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[10] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[11] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[12] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[8] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [5:0]Q;
  wire [0:0]SR;
  wire \addr[0]_i_1_n_0 ;
  wire \addr[0]_i_2_n_0 ;
  wire \addr[0]_i_3_n_0 ;
  wire \addr[0]_i_4_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[1]_i_2_n_0 ;
  wire \addr[1]_i_3_n_0 ;
  wire \addr[1]_i_4_n_0 ;
  wire \addr[2]_i_1_n_0 ;
  wire \addr[2]_i_2_n_0 ;
  wire \addr[3]_i_1_n_0 ;
  wire \addr[4]_i_1_n_0 ;
  wire \addr[5]_i_2_n_0 ;
  wire \addr[5]_i_3_n_0 ;
  wire \addr[5]_i_4_n_0 ;
  wire \addr[5]_i_7_n_0 ;
  wire \addr[5]_i_9_n_0 ;
  wire clkb_OBUF;
  wire clkb_OBUF_BUFG;
  wire csn_OBUF;
  wire \delay[2]_i_2_n_0 ;
  wire \delay[3]_i_2_n_0 ;
  wire \delay[4]_i_2_n_0 ;
  wire \delay[5]_i_2_n_0 ;
  wire \delay[6]_i_2_n_0 ;
  wire \delay[7]_i_1_n_0 ;
  wire \delay[7]_i_3_n_0 ;
  wire \delay[7]_i_4_n_0 ;
  wire [7:0]delay_reg__0;
  wire [38:32]di_i;
  wire di_i1;
  wire \di_i[0]_i_1_n_0 ;
  wire \di_i[10]_i_1_n_0 ;
  wire \di_i[11]_i_1_n_0 ;
  wire \di_i[12]_i_1_n_0 ;
  wire \di_i[13]_i_1_n_0 ;
  wire \di_i[14]_i_1_n_0 ;
  wire \di_i[15]_i_1_n_0 ;
  wire \di_i[16]_i_1_n_0 ;
  wire \di_i[17]_i_1_n_0 ;
  wire \di_i[18]_i_1_n_0 ;
  wire \di_i[19]_i_1_n_0 ;
  wire \di_i[1]_i_1_n_0 ;
  wire \di_i[20]_i_1_n_0 ;
  wire \di_i[21]_i_1_n_0 ;
  wire \di_i[22]_i_1_n_0 ;
  wire \di_i[23]_i_1_n_0 ;
  wire \di_i[24]_i_1_n_0 ;
  wire \di_i[25]_i_1_n_0 ;
  wire \di_i[26]_i_1_n_0 ;
  wire \di_i[27]_i_1_n_0 ;
  wire \di_i[28]_i_1_n_0 ;
  wire \di_i[29]_i_1_n_0 ;
  wire \di_i[2]_i_1_n_0 ;
  wire \di_i[30]_i_1_n_0 ;
  wire \di_i[31]_i_1_n_0 ;
  wire \di_i[32]_i_2_n_0 ;
  wire \di_i[32]_i_3_n_0 ;
  wire \di_i[32]_i_4_n_0 ;
  wire \di_i[33]_i_2_n_0 ;
  wire \di_i[33]_i_3_n_0 ;
  wire \di_i[33]_i_4_n_0 ;
  wire \di_i[34]_i_2_n_0 ;
  wire \di_i[34]_i_3_n_0 ;
  wire \di_i[34]_i_4_n_0 ;
  wire \di_i[35]_i_2_n_0 ;
  wire \di_i[35]_i_3_n_0 ;
  wire \di_i[35]_i_4_n_0 ;
  wire \di_i[36]_i_2_n_0 ;
  wire \di_i[36]_i_3_n_0 ;
  wire \di_i[36]_i_4_n_0 ;
  wire \di_i[37]_i_2_n_0 ;
  wire \di_i[37]_i_3_n_0 ;
  wire \di_i[37]_i_4_n_0 ;
  wire \di_i[38]_i_10_n_0 ;
  wire \di_i[38]_i_11_n_0 ;
  wire \di_i[38]_i_12_n_0 ;
  wire \di_i[38]_i_13_n_0 ;
  wire \di_i[38]_i_14_n_0 ;
  wire \di_i[38]_i_15_n_0 ;
  wire \di_i[38]_i_17_n_0 ;
  wire \di_i[38]_i_18_n_0 ;
  wire \di_i[38]_i_19_n_0 ;
  wire \di_i[38]_i_20_n_0 ;
  wire \di_i[38]_i_21_n_0 ;
  wire \di_i[38]_i_22_n_0 ;
  wire \di_i[38]_i_23_n_0 ;
  wire \di_i[38]_i_24_n_0 ;
  wire \di_i[38]_i_4_n_0 ;
  wire \di_i[38]_i_5_n_0 ;
  wire \di_i[38]_i_6_n_0 ;
  wire \di_i[38]_i_7_n_0 ;
  wire \di_i[38]_i_8_n_0 ;
  wire \di_i[38]_i_9_n_0 ;
  wire \di_i[39]_i_2_n_0 ;
  wire \di_i[3]_i_1_n_0 ;
  wire \di_i[4]_i_1_n_0 ;
  wire \di_i[5]_i_1_n_0 ;
  wire \di_i[6]_i_1_n_0 ;
  wire \di_i[7]_i_1_n_0 ;
  wire \di_i[8]_i_1_n_0 ;
  wire \di_i[9]_i_1_n_0 ;
  wire \di_i_reg[38]_i_16_n_1 ;
  wire \di_i_reg[38]_i_16_n_2 ;
  wire \di_i_reg[38]_i_16_n_3 ;
  wire \di_i_reg_n_0_[0] ;
  wire \di_i_reg_n_0_[10] ;
  wire \di_i_reg_n_0_[11] ;
  wire \di_i_reg_n_0_[12] ;
  wire \di_i_reg_n_0_[13] ;
  wire \di_i_reg_n_0_[14] ;
  wire \di_i_reg_n_0_[15] ;
  wire \di_i_reg_n_0_[16] ;
  wire \di_i_reg_n_0_[17] ;
  wire \di_i_reg_n_0_[18] ;
  wire \di_i_reg_n_0_[19] ;
  wire \di_i_reg_n_0_[1] ;
  wire \di_i_reg_n_0_[20] ;
  wire \di_i_reg_n_0_[21] ;
  wire \di_i_reg_n_0_[22] ;
  wire \di_i_reg_n_0_[23] ;
  wire \di_i_reg_n_0_[24] ;
  wire \di_i_reg_n_0_[25] ;
  wire \di_i_reg_n_0_[26] ;
  wire \di_i_reg_n_0_[27] ;
  wire \di_i_reg_n_0_[28] ;
  wire \di_i_reg_n_0_[29] ;
  wire \di_i_reg_n_0_[2] ;
  wire \di_i_reg_n_0_[30] ;
  wire \di_i_reg_n_0_[31] ;
  wire \di_i_reg_n_0_[32] ;
  wire \di_i_reg_n_0_[33] ;
  wire \di_i_reg_n_0_[34] ;
  wire \di_i_reg_n_0_[35] ;
  wire \di_i_reg_n_0_[36] ;
  wire \di_i_reg_n_0_[37] ;
  wire \di_i_reg_n_0_[38] ;
  wire \di_i_reg_n_0_[39] ;
  wire \di_i_reg_n_0_[3] ;
  wire \di_i_reg_n_0_[4] ;
  wire \di_i_reg_n_0_[5] ;
  wire \di_i_reg_n_0_[6] ;
  wire \di_i_reg_n_0_[7] ;
  wire \di_i_reg_n_0_[8] ;
  wire \di_i_reg_n_0_[9] ;
  wire [31:0]dinb_OBUF;
  wire [31:0]doutb_IBUF;
  wire \memreal_reg_n_0_[0][0] ;
  wire \memreal_reg_n_0_[0][1] ;
  wire \memreal_reg_n_0_[0][2] ;
  wire \memreal_reg_n_0_[0][3] ;
  wire \memreal_reg_n_0_[0][4] ;
  wire \memreal_reg_n_0_[0][5] ;
  wire miso_IBUF;
  wire mosi_OBUF;
  wire [7:0]numchips;
  wire \numregs[7]_i_1_n_0 ;
  wire \numregs[7]_i_2_n_0 ;
  wire \numregs_reg_n_0_[0] ;
  wire \numregs_reg_n_0_[1] ;
  wire \numregs_reg_n_0_[2] ;
  wire \numregs_reg_n_0_[3] ;
  wire \numregs_reg_n_0_[4] ;
  wire \numregs_reg_n_0_[5] ;
  wire \numregs_reg_n_0_[6] ;
  wire \numregs_reg_n_0_[7] ;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire [7:0]p_0_in__2;
  wire [7:0]p_0_in__3;
  wire p_11_out;
  wire \p_chip[0]_i_2_n_0 ;
  wire \p_chip[1]_i_2_n_0 ;
  wire \p_chip[1]_i_4_n_0 ;
  wire \p_chip[2]_i_4_n_0 ;
  wire \p_chip[2]_i_5_n_0 ;
  wire \p_chip[3]_i_2_n_0 ;
  wire \p_chip[3]_i_4_n_0 ;
  wire \p_chip[4]_i_2_n_0 ;
  wire \p_chip[4]_i_5_n_0 ;
  wire \p_chip[4]_i_6_n_0 ;
  wire \p_chip[5]_i_2_n_0 ;
  wire \p_chip[5]_i_3_n_0 ;
  wire \p_chip[5]_i_5_n_0 ;
  wire \p_chip[6]_i_2_n_0 ;
  wire \p_chip[6]_i_3_n_0 ;
  wire \p_chip[6]_i_5_n_0 ;
  wire \p_chip[7]_i_3_n_0 ;
  wire \p_chip[7]_i_5_n_0 ;
  wire \p_chip[7]_i_6_n_0 ;
  wire \p_chip[7]_i_8_n_0 ;
  wire \p_chip[7]_i_9_n_0 ;
  wire [7:0]p_chip_reg__0;
  wire [5:0]p_ram;
  wire \p_rchip[1]_i_4_n_0 ;
  wire \p_rchip[1]_i_5_n_0 ;
  wire \p_rchip[2]_i_3_n_0 ;
  wire \p_rchip[2]_i_4_n_0 ;
  wire \p_rchip[2]_i_5_n_0 ;
  wire \p_rchip[3]_i_2_n_0 ;
  wire \p_rchip[3]_i_5_n_0 ;
  wire \p_rchip[3]_i_6_n_0 ;
  wire \p_rchip[4]_i_2_n_0 ;
  wire \p_rchip[4]_i_4_n_0 ;
  wire \p_rchip[4]_i_5_n_0 ;
  wire \p_rchip[4]_i_6_n_0 ;
  wire \p_rchip[4]_i_8_n_0 ;
  wire \p_rchip[5]_i_2_n_0 ;
  wire \p_rchip[5]_i_5_n_0 ;
  wire \p_rchip[5]_i_6_n_0 ;
  wire \p_rchip[6]_i_2_n_0 ;
  wire \p_rchip[6]_i_5_n_0 ;
  wire \p_rchip[6]_i_6_n_0 ;
  wire \p_rchip[7]_i_10_n_0 ;
  wire \p_rchip[7]_i_11_n_0 ;
  wire \p_rchip[7]_i_12_n_0 ;
  wire \p_rchip[7]_i_13_n_0 ;
  wire \p_rchip[7]_i_14_n_0 ;
  wire \p_rchip[7]_i_15_n_0 ;
  wire \p_rchip[7]_i_7_n_0 ;
  wire [7:3]p_rchip_reg__0;
  wire \p_reg[2]_i_2_n_0 ;
  wire \p_reg[3]_i_2_n_0 ;
  wire \p_reg[4]_i_2_n_0 ;
  wire \p_reg[5]_i_2_n_0 ;
  wire \p_reg[6]_i_2_n_0 ;
  wire \p_reg[7]_i_2_n_0 ;
  wire \p_reg[7]_i_3_n_0 ;
  wire [7:0]p_reg_reg__0;
  wire \p_rreg[2]_i_2_n_0 ;
  wire \p_rreg[3]_i_2_n_0 ;
  wire \p_rreg[4]_i_2_n_0 ;
  wire \p_rreg[5]_i_2_n_0 ;
  wire \p_rreg[6]_i_2_n_0 ;
  wire \p_rreg[7]_i_4_n_0 ;
  wire \p_rreg[7]_i_5_n_0 ;
  wire \p_rreg[7]_i_6_n_0 ;
  wire \p_rreg[7]_i_7_n_0 ;
  wire \p_rreg[7]_i_8_n_0 ;
  wire \p_rreg[7]_i_9_n_0 ;
  wire [7:3]p_rreg_reg__0;
  wire \readregs[0][6]_i_1_n_0 ;
  wire \readregs[0][6]_i_2_n_0 ;
  wire \readregs[4][6]_i_1_n_0 ;
  wire \readregs[4][6]_i_2_n_0 ;
  wire [6:0]\readregs_reg[0]_0 ;
  wire [6:0]\readregs_reg[1]_1 ;
  wire [6:0]\readregs_reg[2]_2 ;
  wire [6:0]\readregs_reg[3]_3 ;
  wire [6:0]\readregs_reg[4]_4 ;
  wire [6:0]\readregs_reg[5]_5 ;
  wire [6:0]\readregs_reg[6]_6 ;
  wire resetn_IBUF;
  wire sclk_OBUF;
  wire spimaster_n_10;
  wire spimaster_n_11;
  wire spimaster_n_12;
  wire spimaster_n_13;
  wire spimaster_n_14;
  wire spimaster_n_15;
  wire spimaster_n_16;
  wire spimaster_n_2;
  wire spimaster_n_3;
  wire spimaster_n_33;
  wire spimaster_n_34;
  wire spimaster_n_35;
  wire spimaster_n_36;
  wire spimaster_n_37;
  wire spimaster_n_38;
  wire spimaster_n_39;
  wire spimaster_n_4;
  wire spimaster_n_40;
  wire spimaster_n_41;
  wire spimaster_n_42;
  wire spimaster_n_43;
  wire spimaster_n_44;
  wire spimaster_n_45;
  wire spimaster_n_46;
  wire spimaster_n_47;
  wire spimaster_n_48;
  wire spimaster_n_49;
  wire spimaster_n_5;
  wire spimaster_n_50;
  wire spimaster_n_51;
  wire spimaster_n_52;
  wire spimaster_n_53;
  wire spimaster_n_54;
  wire spimaster_n_55;
  wire spimaster_n_56;
  wire spimaster_n_57;
  wire spimaster_n_58;
  wire spimaster_n_59;
  wire spimaster_n_6;
  wire spimaster_n_60;
  wire spimaster_n_61;
  wire spimaster_n_62;
  wire spimaster_n_63;
  wire spimaster_n_64;
  wire spimaster_n_65;
  wire spimaster_n_66;
  wire spimaster_n_67;
  wire spimaster_n_68;
  wire spimaster_n_69;
  wire spimaster_n_7;
  wire spimaster_n_70;
  wire spimaster_n_71;
  wire spimaster_n_8;
  wire spimaster_n_9;
  wire \t_chip[2]_i_1_n_0 ;
  wire \t_chip_reg_n_0_[0] ;
  wire \t_chip_reg_n_0_[1] ;
  wire \t_chip_reg_n_0_[2] ;
  wire \t_reg_reg_n_0_[0] ;
  wire \t_reg_reg_n_0_[1] ;
  wire \t_reg_reg_n_0_[2] ;
  wire \t_reg_reg_n_0_[3] ;
  wire \t_reg_reg_n_0_[4] ;
  wire \t_reg_reg_n_0_[5] ;
  wire \t_reg_reg_n_0_[6] ;
  wire t_write;
  wire we1;
  wire we_i_3_n_0;
  wire we_i_4_n_0;
  wire we_i_5_n_0;
  wire [0:0]web_OBUF;
  wire wren_i_reg_n_0;

  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_onehot_state[0]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[0]_i_5 
       (.I0(\p_rreg[7]_i_8_n_0 ),
        .I1(\p_rreg[7]_i_7_n_0 ),
        .I2(\p_rreg[7]_i_6_n_0 ),
        .I3(\p_rreg[7]_i_5_n_0 ),
        .O(\FSM_onehot_state[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[10]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[10]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .O(\FSM_onehot_state[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hAFAFAFAE)) 
    \FSM_onehot_state[11]_i_3 
       (.I0(\FSM_onehot_state[11]_i_4_n_0 ),
        .I1(p_reg_reg__0[6]),
        .I2(p_reg_reg__0[7]),
        .I3(p_reg_reg__0[0]),
        .I4(p_reg_reg__0[1]),
        .O(\FSM_onehot_state[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \FSM_onehot_state[11]_i_4 
       (.I0(p_reg_reg__0[4]),
        .I1(p_reg_reg__0[5]),
        .I2(p_reg_reg__0[2]),
        .I3(p_reg_reg__0[7]),
        .I4(p_reg_reg__0[3]),
        .O(\FSM_onehot_state[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[12]_i_10 
       (.I0(p_rreg_reg__0[4]),
        .I1(p_rreg_reg__0[5]),
        .I2(p_ram[5]),
        .I3(p_rreg_reg__0[3]),
        .O(\FSM_onehot_state[12]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[12]_i_11 
       (.I0(p_ram[4]),
        .I1(p_ram[3]),
        .I2(p_rreg_reg__0[6]),
        .O(\FSM_onehot_state[12]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[12]_i_12 
       (.I0(p_chip_reg__0[4]),
        .I1(p_chip_reg__0[5]),
        .I2(p_chip_reg__0[7]),
        .I3(p_chip_reg__0[6]),
        .O(\FSM_onehot_state[12]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[12]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[12]_i_5 
       (.I0(\FSM_onehot_state[6]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\FSM_onehot_state[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    \FSM_onehot_state[12]_i_6 
       (.I0(delay_reg__0[6]),
        .I1(delay_reg__0[5]),
        .I2(delay_reg__0[7]),
        .I3(\delay[5]_i_2_n_0 ),
        .O(\FSM_onehot_state[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \FSM_onehot_state[12]_i_7 
       (.I0(p_ram[4]),
        .I1(p_ram[3]),
        .I2(p_rreg_reg__0[6]),
        .I3(\FSM_onehot_state[12]_i_10_n_0 ),
        .I4(p_rreg_reg__0[7]),
        .O(we1));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[12]_i_9 
       (.I0(p_chip_reg__0[3]),
        .I1(p_chip_reg__0[2]),
        .I2(p_chip_reg__0[1]),
        .I3(p_chip_reg__0[0]),
        .I4(\FSM_onehot_state[12]_i_12_n_0 ),
        .O(\FSM_onehot_state[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4444444444444)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[7]_i_2_n_0 ),
        .I1(doutb_IBUF[1]),
        .I2(\FSM_onehot_state[1]_i_2_n_0 ),
        .I3(\FSM_onehot_state[2]_i_3_n_0 ),
        .I4(\FSM_onehot_state[6]_i_4_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\memreal_reg_n_0_[0][2] ),
        .I1(\memreal_reg_n_0_[0][0] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(\memreal_reg_n_0_[0][4] ),
        .I1(\memreal_reg_n_0_[0][3] ),
        .I2(\memreal_reg_n_0_[0][5] ),
        .I3(\memreal_reg_n_0_[0][1] ),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state[10]_i_2_n_0 ),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\p_rchip[5]_i_2_n_0 ),
        .I1(p_rchip_reg__0[6]),
        .I2(p_rchip_reg__0[5]),
        .I3(p_rchip_reg__0[7]),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(\addr[1]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_state_reg_n_0_[8] ),
        .I5(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h04040404FF040404)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state[7]_i_2_n_0 ),
        .I1(doutb_IBUF[0]),
        .I2(doutb_IBUF[1]),
        .I3(\FSM_onehot_state[8]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \FSM_onehot_state[7]_i_2 
       (.I0(\FSM_onehot_state[1]_i_2_n_0 ),
        .I1(\memreal_reg_n_0_[0][1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\memreal_reg_n_0_[0][4] ),
        .I4(\memreal_reg_n_0_[0][3] ),
        .I5(\memreal_reg_n_0_[0][5] ),
        .O(\FSM_onehot_state[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \FSM_onehot_state[8]_i_4 
       (.I0(\memreal_reg_n_0_[0][2] ),
        .I1(\memreal_reg_n_0_[0][0] ),
        .I2(\memreal_reg_n_0_[0][1] ),
        .I3(\memreal_reg_n_0_[0][5] ),
        .I4(\memreal_reg_n_0_[0][3] ),
        .I5(\memreal_reg_n_0_[0][4] ),
        .O(\FSM_onehot_state[8]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(spimaster_n_16),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(spimaster_n_8),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(spimaster_n_7),
        .Q(\FSM_onehot_state_reg_n_0_[11] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(spimaster_n_6),
        .Q(\FSM_onehot_state_reg_n_0_[12] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(spimaster_n_15),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(spimaster_n_14),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(spimaster_n_13),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(spimaster_n_12),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(spimaster_n_11),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(spimaster_n_10),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_33),
        .D(spimaster_n_9),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(SR));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \addr[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\addr[0]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\addr[0]_i_3_n_0 ),
        .I5(\addr[0]_i_4_n_0 ),
        .O(\addr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \addr[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\memreal_reg_n_0_[0][0] ),
        .I2(\numregs[7]_i_2_n_0 ),
        .I3(\memreal_reg_n_0_[0][1] ),
        .O(\addr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \addr[0]_i_3 
       (.I0(\memreal_reg_n_0_[0][1] ),
        .I1(\memreal_reg_n_0_[0][0] ),
        .I2(\memreal_reg_n_0_[0][2] ),
        .I3(\memreal_reg_n_0_[0][4] ),
        .I4(\memreal_reg_n_0_[0][5] ),
        .I5(\memreal_reg_n_0_[0][3] ),
        .O(\addr[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \addr[0]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(p_ram[0]),
        .I3(\FSM_onehot_state_reg_n_0_[10] ),
        .I4(\FSM_onehot_state_reg_n_0_[12] ),
        .O(\addr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \addr[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\addr[1]_i_2_n_0 ),
        .I3(\addr[1]_i_3_n_0 ),
        .I4(p_ram[1]),
        .I5(\addr[1]_i_4_n_0 ),
        .O(\addr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF02)) 
    \addr[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\numregs[7]_i_2_n_0 ),
        .I2(\memreal_reg_n_0_[0][0] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\addr[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr[1]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .O(\addr[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \addr[1]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\readregs[0][6]_i_2_n_0 ),
        .I2(\memreal_reg_n_0_[0][1] ),
        .I3(\memreal_reg_n_0_[0][0] ),
        .I4(\memreal_reg_n_0_[0][2] ),
        .O(\addr[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \addr[2]_i_1 
       (.I0(p_ram[2]),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_state_reg_n_0_[12] ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\addr[2]_i_2_n_0 ),
        .O(\addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000001)) 
    \addr[2]_i_2 
       (.I0(\memreal_reg_n_0_[0][1] ),
        .I1(\memreal_reg_n_0_[0][4] ),
        .I2(\memreal_reg_n_0_[0][5] ),
        .I3(\memreal_reg_n_0_[0][3] ),
        .I4(\memreal_reg_n_0_[0][2] ),
        .I5(\memreal_reg_n_0_[0][0] ),
        .O(\addr[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \addr[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(p_ram[3]),
        .O(\addr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \addr[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(p_ram[4]),
        .O(\addr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \addr[5]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(p_ram[5]),
        .O(\addr[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr[5]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\addr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \addr[5]_i_4 
       (.I0(\memreal_reg_n_0_[0][1] ),
        .I1(\memreal_reg_n_0_[0][3] ),
        .I2(\memreal_reg_n_0_[0][5] ),
        .I3(\memreal_reg_n_0_[0][4] ),
        .I4(\memreal_reg_n_0_[0][2] ),
        .I5(\memreal_reg_n_0_[0][0] ),
        .O(\addr[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \addr[5]_i_7 
       (.I0(\addr[5]_i_9_n_0 ),
        .I1(\t_chip_reg_n_0_[0] ),
        .I2(p_ram[0]),
        .I3(\t_chip_reg_n_0_[1] ),
        .I4(p_ram[1]),
        .O(\addr[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFE)) 
    \addr[5]_i_9 
       (.I0(p_rchip_reg__0[4]),
        .I1(p_rchip_reg__0[3]),
        .I2(p_rchip_reg__0[5]),
        .I3(p_ram[2]),
        .I4(\t_chip_reg_n_0_[2] ),
        .O(\addr[5]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_36),
        .D(\addr[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_36),
        .D(\addr[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_36),
        .D(\addr[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_36),
        .D(\addr[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_36),
        .D(\addr[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_36),
        .D(\addr[5]_i_2_n_0 ),
        .Q(Q[5]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h0000EEFE)) 
    \delay[0]_i_1 
       (.I0(\FSM_onehot_state[12]_i_6_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\addr[2]_i_2_n_0 ),
        .I4(delay_reg__0[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hFEFE50005000FEFE)) 
    \delay[1]_i_1 
       (.I0(\FSM_onehot_state[12]_i_6_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\addr[2]_i_2_n_0 ),
        .I4(delay_reg__0[1]),
        .I5(delay_reg__0[0]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h0000EEFE)) 
    \delay[2]_i_1 
       (.I0(\FSM_onehot_state[12]_i_6_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\addr[2]_i_2_n_0 ),
        .I4(\delay[2]_i_2_n_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \delay[2]_i_2 
       (.I0(delay_reg__0[1]),
        .I1(delay_reg__0[0]),
        .I2(delay_reg__0[2]),
        .O(\delay[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEFE)) 
    \delay[3]_i_1 
       (.I0(\FSM_onehot_state[12]_i_6_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\addr[2]_i_2_n_0 ),
        .I4(\delay[3]_i_2_n_0 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \delay[3]_i_2 
       (.I0(delay_reg__0[2]),
        .I1(delay_reg__0[0]),
        .I2(delay_reg__0[1]),
        .I3(delay_reg__0[3]),
        .O(\delay[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEFE)) 
    \delay[4]_i_1 
       (.I0(\FSM_onehot_state[12]_i_6_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\addr[2]_i_2_n_0 ),
        .I4(\delay[4]_i_2_n_0 ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \delay[4]_i_2 
       (.I0(delay_reg__0[3]),
        .I1(delay_reg__0[1]),
        .I2(delay_reg__0[0]),
        .I3(delay_reg__0[2]),
        .I4(delay_reg__0[4]),
        .O(\delay[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFE00000000EEFE)) 
    \delay[5]_i_1 
       (.I0(\FSM_onehot_state[12]_i_6_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\addr[2]_i_2_n_0 ),
        .I4(delay_reg__0[5]),
        .I5(\delay[5]_i_2_n_0 ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \delay[5]_i_2 
       (.I0(delay_reg__0[3]),
        .I1(delay_reg__0[1]),
        .I2(delay_reg__0[0]),
        .I3(delay_reg__0[2]),
        .I4(delay_reg__0[4]),
        .O(\delay[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEFE)) 
    \delay[6]_i_1 
       (.I0(\FSM_onehot_state[12]_i_6_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\addr[2]_i_2_n_0 ),
        .I4(\delay[6]_i_2_n_0 ),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h1E)) 
    \delay[6]_i_2 
       (.I0(delay_reg__0[5]),
        .I1(\delay[5]_i_2_n_0 ),
        .I2(delay_reg__0[6]),
        .O(\delay[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA40)) 
    \delay[7]_i_1 
       (.I0(\FSM_onehot_state[12]_i_6_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\addr[2]_i_2_n_0 ),
        .I3(resetn_IBUF),
        .O(\delay[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEFE)) 
    \delay[7]_i_2 
       (.I0(\FSM_onehot_state[12]_i_6_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\addr[2]_i_2_n_0 ),
        .I4(\delay[7]_i_4_n_0 ),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \delay[7]_i_3 
       (.I0(\FSM_onehot_state[12]_i_5_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\delay[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \delay[7]_i_4 
       (.I0(\delay[5]_i_2_n_0 ),
        .I1(delay_reg__0[6]),
        .I2(delay_reg__0[5]),
        .I3(delay_reg__0[7]),
        .O(\delay[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\delay[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(delay_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\delay[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(delay_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\delay[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(delay_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\delay[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(delay_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\delay[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(delay_reg__0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\delay[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(delay_reg__0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\delay[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(delay_reg__0[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(\delay[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(delay_reg__0[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[0]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[0]),
        .O(\di_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[10]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[10]),
        .O(\di_i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[11]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[11]),
        .O(\di_i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[12]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[12]),
        .O(\di_i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[13]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[13]),
        .O(\di_i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[14]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[14]),
        .O(\di_i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[15]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[15]),
        .O(\di_i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[16]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[16]),
        .O(\di_i[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[17]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[17]),
        .O(\di_i[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[18]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[18]),
        .O(\di_i[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[19]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[19]),
        .O(\di_i[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[1]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[1]),
        .O(\di_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[20]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[20]),
        .O(\di_i[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[21]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[21]),
        .O(\di_i[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[22]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[22]),
        .O(\di_i[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[23]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[23]),
        .O(\di_i[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[24]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[24]),
        .O(\di_i[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[25]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[25]),
        .O(\di_i[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[26]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[26]),
        .O(\di_i[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[27]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[27]),
        .O(\di_i[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[28]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[28]),
        .O(\di_i[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[29]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[29]),
        .O(\di_i[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[2]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[2]),
        .O(\di_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[30]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[30]),
        .O(\di_i[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[31]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[31]),
        .O(\di_i[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \di_i[32]_i_1 
       (.I0(\di_i[32]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\di_i[38]_i_6_n_0 ),
        .I3(\t_reg_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(di_i[32]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \di_i[32]_i_2 
       (.I0(\di_i[32]_i_3_n_0 ),
        .I1(\readregs_reg[2]_2 [0]),
        .I2(\di_i[38]_i_8_n_0 ),
        .I3(\readregs_reg[0]_0 [0]),
        .I4(\di_i[38]_i_9_n_0 ),
        .I5(\di_i[32]_i_4_n_0 ),
        .O(\di_i[32]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \di_i[32]_i_3 
       (.I0(\di_i[38]_i_13_n_0 ),
        .I1(\readregs_reg[4]_4 [0]),
        .I2(\di_i[38]_i_14_n_0 ),
        .I3(\readregs_reg[6]_6 [0]),
        .I4(\readregs_reg[5]_5 [0]),
        .I5(\di_i[38]_i_15_n_0 ),
        .O(\di_i[32]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \di_i[32]_i_4 
       (.I0(\readregs_reg[3]_3 [0]),
        .I1(\readregs_reg[1]_1 [0]),
        .I2(p_reg_reg__0[1]),
        .I3(di_i1),
        .I4(p_reg_reg__0[2]),
        .I5(p_reg_reg__0[0]),
        .O(\di_i[32]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \di_i[33]_i_1 
       (.I0(\di_i[33]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\di_i[38]_i_6_n_0 ),
        .I3(\t_reg_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(di_i[33]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \di_i[33]_i_2 
       (.I0(\di_i[33]_i_3_n_0 ),
        .I1(\readregs_reg[2]_2 [1]),
        .I2(\di_i[38]_i_8_n_0 ),
        .I3(\readregs_reg[0]_0 [1]),
        .I4(\di_i[38]_i_9_n_0 ),
        .I5(\di_i[33]_i_4_n_0 ),
        .O(\di_i[33]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \di_i[33]_i_3 
       (.I0(\di_i[38]_i_13_n_0 ),
        .I1(\readregs_reg[4]_4 [1]),
        .I2(\di_i[38]_i_14_n_0 ),
        .I3(\readregs_reg[6]_6 [1]),
        .I4(\readregs_reg[5]_5 [1]),
        .I5(\di_i[38]_i_15_n_0 ),
        .O(\di_i[33]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \di_i[33]_i_4 
       (.I0(\readregs_reg[3]_3 [1]),
        .I1(\readregs_reg[1]_1 [1]),
        .I2(p_reg_reg__0[1]),
        .I3(di_i1),
        .I4(p_reg_reg__0[2]),
        .I5(p_reg_reg__0[0]),
        .O(\di_i[33]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \di_i[34]_i_1 
       (.I0(\di_i[34]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\di_i[38]_i_6_n_0 ),
        .I3(\t_reg_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(di_i[34]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \di_i[34]_i_2 
       (.I0(\di_i[34]_i_3_n_0 ),
        .I1(\readregs_reg[2]_2 [2]),
        .I2(\di_i[38]_i_8_n_0 ),
        .I3(\readregs_reg[0]_0 [2]),
        .I4(\di_i[38]_i_9_n_0 ),
        .I5(\di_i[34]_i_4_n_0 ),
        .O(\di_i[34]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \di_i[34]_i_3 
       (.I0(\di_i[38]_i_13_n_0 ),
        .I1(\readregs_reg[4]_4 [2]),
        .I2(\di_i[38]_i_14_n_0 ),
        .I3(\readregs_reg[6]_6 [2]),
        .I4(\readregs_reg[5]_5 [2]),
        .I5(\di_i[38]_i_15_n_0 ),
        .O(\di_i[34]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \di_i[34]_i_4 
       (.I0(\readregs_reg[3]_3 [2]),
        .I1(\readregs_reg[1]_1 [2]),
        .I2(p_reg_reg__0[1]),
        .I3(di_i1),
        .I4(p_reg_reg__0[2]),
        .I5(p_reg_reg__0[0]),
        .O(\di_i[34]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \di_i[35]_i_1 
       (.I0(\di_i[35]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\di_i[38]_i_6_n_0 ),
        .I3(\t_reg_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(di_i[35]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \di_i[35]_i_2 
       (.I0(\di_i[35]_i_3_n_0 ),
        .I1(\readregs_reg[2]_2 [3]),
        .I2(\di_i[38]_i_8_n_0 ),
        .I3(\readregs_reg[0]_0 [3]),
        .I4(\di_i[38]_i_9_n_0 ),
        .I5(\di_i[35]_i_4_n_0 ),
        .O(\di_i[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \di_i[35]_i_3 
       (.I0(\di_i[38]_i_13_n_0 ),
        .I1(\readregs_reg[4]_4 [3]),
        .I2(\di_i[38]_i_14_n_0 ),
        .I3(\readregs_reg[6]_6 [3]),
        .I4(\readregs_reg[5]_5 [3]),
        .I5(\di_i[38]_i_15_n_0 ),
        .O(\di_i[35]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \di_i[35]_i_4 
       (.I0(\readregs_reg[3]_3 [3]),
        .I1(\readregs_reg[1]_1 [3]),
        .I2(p_reg_reg__0[1]),
        .I3(di_i1),
        .I4(p_reg_reg__0[2]),
        .I5(p_reg_reg__0[0]),
        .O(\di_i[35]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \di_i[36]_i_1 
       (.I0(\di_i[36]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\di_i[38]_i_6_n_0 ),
        .I3(\t_reg_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(di_i[36]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \di_i[36]_i_2 
       (.I0(\di_i[36]_i_3_n_0 ),
        .I1(\readregs_reg[2]_2 [4]),
        .I2(\di_i[38]_i_8_n_0 ),
        .I3(\readregs_reg[0]_0 [4]),
        .I4(\di_i[38]_i_9_n_0 ),
        .I5(\di_i[36]_i_4_n_0 ),
        .O(\di_i[36]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \di_i[36]_i_3 
       (.I0(\di_i[38]_i_13_n_0 ),
        .I1(\readregs_reg[4]_4 [4]),
        .I2(\di_i[38]_i_14_n_0 ),
        .I3(\readregs_reg[6]_6 [4]),
        .I4(\readregs_reg[5]_5 [4]),
        .I5(\di_i[38]_i_15_n_0 ),
        .O(\di_i[36]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \di_i[36]_i_4 
       (.I0(\readregs_reg[3]_3 [4]),
        .I1(\readregs_reg[1]_1 [4]),
        .I2(p_reg_reg__0[1]),
        .I3(di_i1),
        .I4(p_reg_reg__0[2]),
        .I5(p_reg_reg__0[0]),
        .O(\di_i[36]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \di_i[37]_i_1 
       (.I0(\di_i[37]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\di_i[38]_i_6_n_0 ),
        .I3(\t_reg_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(di_i[37]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \di_i[37]_i_2 
       (.I0(\di_i[37]_i_3_n_0 ),
        .I1(\readregs_reg[2]_2 [5]),
        .I2(\di_i[38]_i_8_n_0 ),
        .I3(\readregs_reg[0]_0 [5]),
        .I4(\di_i[38]_i_9_n_0 ),
        .I5(\di_i[37]_i_4_n_0 ),
        .O(\di_i[37]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \di_i[37]_i_3 
       (.I0(\di_i[38]_i_13_n_0 ),
        .I1(\readregs_reg[4]_4 [5]),
        .I2(\di_i[38]_i_14_n_0 ),
        .I3(\readregs_reg[6]_6 [5]),
        .I4(\readregs_reg[5]_5 [5]),
        .I5(\di_i[38]_i_15_n_0 ),
        .O(\di_i[37]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \di_i[37]_i_4 
       (.I0(\readregs_reg[3]_3 [5]),
        .I1(\readregs_reg[1]_1 [5]),
        .I2(p_reg_reg__0[1]),
        .I3(di_i1),
        .I4(p_reg_reg__0[2]),
        .I5(p_reg_reg__0[0]),
        .O(\di_i[37]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \di_i[38]_i_10 
       (.I0(\readregs_reg[3]_3 [6]),
        .I1(\readregs_reg[1]_1 [6]),
        .I2(p_reg_reg__0[1]),
        .I3(di_i1),
        .I4(p_reg_reg__0[2]),
        .I5(p_reg_reg__0[0]),
        .O(\di_i[38]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \di_i[38]_i_11 
       (.I0(p_chip_reg__0[7]),
        .I1(p_chip_reg__0[6]),
        .O(\di_i[38]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBE)) 
    \di_i[38]_i_12 
       (.I0(p_chip_reg__0[4]),
        .I1(\t_chip_reg_n_0_[0] ),
        .I2(p_chip_reg__0[0]),
        .I3(p_chip_reg__0[3]),
        .I4(p_chip_reg__0[5]),
        .O(\di_i[38]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \di_i[38]_i_13 
       (.I0(di_i1),
        .I1(p_reg_reg__0[2]),
        .I2(p_reg_reg__0[0]),
        .I3(p_reg_reg__0[1]),
        .O(\di_i[38]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[38]_i_14 
       (.I0(di_i1),
        .I1(p_reg_reg__0[2]),
        .I2(p_reg_reg__0[1]),
        .O(\di_i[38]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \di_i[38]_i_15 
       (.I0(di_i1),
        .I1(p_reg_reg__0[2]),
        .I2(p_reg_reg__0[0]),
        .I3(p_reg_reg__0[1]),
        .O(\di_i[38]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \di_i[38]_i_17 
       (.I0(p_rreg_reg__0[7]),
        .I1(\numregs_reg_n_0_[7] ),
        .I2(\numregs_reg_n_0_[6] ),
        .I3(p_rreg_reg__0[6]),
        .O(\di_i[38]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \di_i[38]_i_18 
       (.I0(\numregs_reg_n_0_[5] ),
        .I1(p_rreg_reg__0[5]),
        .I2(\numregs_reg_n_0_[4] ),
        .I3(p_rreg_reg__0[4]),
        .O(\di_i[38]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \di_i[38]_i_19 
       (.I0(\numregs_reg_n_0_[3] ),
        .I1(p_rreg_reg__0[3]),
        .I2(\numregs_reg_n_0_[2] ),
        .I3(p_ram[5]),
        .O(\di_i[38]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \di_i[38]_i_2 
       (.I0(\di_i[38]_i_5_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\di_i[38]_i_6_n_0 ),
        .I3(\t_reg_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(di_i[38]));
  LUT4 #(
    .INIT(16'h22B2)) 
    \di_i[38]_i_20 
       (.I0(\numregs_reg_n_0_[1] ),
        .I1(p_ram[4]),
        .I2(\numregs_reg_n_0_[0] ),
        .I3(p_ram[3]),
        .O(\di_i[38]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \di_i[38]_i_21 
       (.I0(\numregs_reg_n_0_[6] ),
        .I1(p_rreg_reg__0[6]),
        .I2(p_rreg_reg__0[7]),
        .I3(\numregs_reg_n_0_[7] ),
        .O(\di_i[38]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \di_i[38]_i_22 
       (.I0(\numregs_reg_n_0_[4] ),
        .I1(p_rreg_reg__0[4]),
        .I2(p_rreg_reg__0[5]),
        .I3(\numregs_reg_n_0_[5] ),
        .O(\di_i[38]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \di_i[38]_i_23 
       (.I0(\numregs_reg_n_0_[2] ),
        .I1(p_ram[5]),
        .I2(p_rreg_reg__0[3]),
        .I3(\numregs_reg_n_0_[3] ),
        .O(\di_i[38]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \di_i[38]_i_24 
       (.I0(\numregs_reg_n_0_[1] ),
        .I1(p_ram[4]),
        .I2(p_ram[3]),
        .I3(\numregs_reg_n_0_[0] ),
        .O(\di_i[38]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \di_i[38]_i_4 
       (.I0(\FSM_onehot_state[12]_i_6_n_0 ),
        .I1(resetn_IBUF),
        .O(\di_i[38]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \di_i[38]_i_5 
       (.I0(\di_i[38]_i_7_n_0 ),
        .I1(\readregs_reg[2]_2 [6]),
        .I2(\di_i[38]_i_8_n_0 ),
        .I3(\readregs_reg[0]_0 [6]),
        .I4(\di_i[38]_i_9_n_0 ),
        .I5(\di_i[38]_i_10_n_0 ),
        .O(\di_i[38]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000041000041)) 
    \di_i[38]_i_6 
       (.I0(\di_i[38]_i_11_n_0 ),
        .I1(p_chip_reg__0[2]),
        .I2(\t_chip_reg_n_0_[2] ),
        .I3(p_chip_reg__0[1]),
        .I4(\t_chip_reg_n_0_[1] ),
        .I5(\di_i[38]_i_12_n_0 ),
        .O(\di_i[38]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \di_i[38]_i_7 
       (.I0(\di_i[38]_i_13_n_0 ),
        .I1(\readregs_reg[4]_4 [6]),
        .I2(\di_i[38]_i_14_n_0 ),
        .I3(\readregs_reg[6]_6 [6]),
        .I4(\readregs_reg[5]_5 [6]),
        .I5(\di_i[38]_i_15_n_0 ),
        .O(\di_i[38]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \di_i[38]_i_8 
       (.I0(p_reg_reg__0[1]),
        .I1(di_i1),
        .I2(p_reg_reg__0[2]),
        .I3(p_reg_reg__0[0]),
        .O(\di_i[38]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \di_i[38]_i_9 
       (.I0(p_reg_reg__0[1]),
        .I1(di_i1),
        .I2(p_reg_reg__0[2]),
        .I3(p_reg_reg__0[0]),
        .O(\di_i[38]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \di_i[39]_i_2 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .O(\di_i[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[3]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[3]),
        .O(\di_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[4]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[4]),
        .O(\di_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[5]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[5]),
        .O(\di_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[6]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[6]),
        .O(\di_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[7]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[7]),
        .O(\di_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[8]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[8]),
        .O(\di_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \di_i[9]_i_1 
       (.I0(\di_i[38]_i_6_n_0 ),
        .I1(t_write),
        .I2(doutb_IBUF[9]),
        .O(\di_i[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[0]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[0] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[10] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[10]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[10] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[11] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[11]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[11] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[12] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[12]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[12] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[13] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[13]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[13] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[14] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[14]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[14] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[15] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[15]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[15] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[16] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[16]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[16] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[17] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[17]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[17] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[18] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[18]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[18] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[19] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[19]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[19] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[1]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[1] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[20] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[20]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[20] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[21] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[21]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[21] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[22] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[22]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[22] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[23] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[23]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[23] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[24] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[24]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[24] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[25] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[25]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[25] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[26] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[26]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[26] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[27] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[27]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[27] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[28] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[28]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[28] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[29] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[29]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[29] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[2]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[2] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[30] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[30]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[30] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[31] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[31]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[31] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[32] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(di_i[32]),
        .Q(\di_i_reg_n_0_[32] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[33] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(di_i[33]),
        .Q(\di_i_reg_n_0_[33] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[34] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(di_i[34]),
        .Q(\di_i_reg_n_0_[34] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[35] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(di_i[35]),
        .Q(\di_i_reg_n_0_[35] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[36] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(di_i[36]),
        .Q(\di_i_reg_n_0_[36] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[37] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(di_i[37]),
        .Q(\di_i_reg_n_0_[37] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[38] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(di_i[38]),
        .Q(\di_i_reg_n_0_[38] ),
        .R(\<const0> ));
  CARRY4 \di_i_reg[38]_i_16 
       (.CI(\<const0> ),
        .CO({di_i1,\di_i_reg[38]_i_16_n_1 ,\di_i_reg[38]_i_16_n_2 ,\di_i_reg[38]_i_16_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\di_i[38]_i_17_n_0 ,\di_i[38]_i_18_n_0 ,\di_i[38]_i_19_n_0 ,\di_i[38]_i_20_n_0 }),
        .S({\di_i[38]_i_21_n_0 ,\di_i[38]_i_22_n_0 ,\di_i[38]_i_23_n_0 ,\di_i[38]_i_24_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[39] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[39]_i_2_n_0 ),
        .Q(\di_i_reg_n_0_[39] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[3]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[3] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[4]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[4] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[5]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[5] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[6]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[6] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[7]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[7] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[8] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[8]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[8] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \di_i_reg[9] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_34),
        .D(\di_i[9]_i_1_n_0 ),
        .Q(\di_i_reg_n_0_[9] ),
        .R(spimaster_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_71),
        .Q(dinb_OBUF[0]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[10] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_61),
        .Q(dinb_OBUF[10]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[11] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_60),
        .Q(dinb_OBUF[11]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[12] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_59),
        .Q(dinb_OBUF[12]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[13] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_58),
        .Q(dinb_OBUF[13]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[14] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_57),
        .Q(dinb_OBUF[14]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[15] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_56),
        .Q(dinb_OBUF[15]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[16] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_55),
        .Q(dinb_OBUF[16]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[17] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_54),
        .Q(dinb_OBUF[17]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[18] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_53),
        .Q(dinb_OBUF[18]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[19] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_52),
        .Q(dinb_OBUF[19]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_70),
        .Q(dinb_OBUF[1]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[20] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_51),
        .Q(dinb_OBUF[20]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[21] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_50),
        .Q(dinb_OBUF[21]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[22] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_49),
        .Q(dinb_OBUF[22]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[23] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_48),
        .Q(dinb_OBUF[23]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[24] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_47),
        .Q(dinb_OBUF[24]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[25] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_46),
        .Q(dinb_OBUF[25]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[26] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_45),
        .Q(dinb_OBUF[26]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[27] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_44),
        .Q(dinb_OBUF[27]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[28] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_43),
        .Q(dinb_OBUF[28]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[29] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_42),
        .Q(dinb_OBUF[29]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_69),
        .Q(dinb_OBUF[2]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[30] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_41),
        .Q(dinb_OBUF[30]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[31] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_40),
        .Q(dinb_OBUF[31]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_68),
        .Q(dinb_OBUF[3]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_67),
        .Q(dinb_OBUF[4]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_66),
        .Q(dinb_OBUF[5]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_65),
        .Q(dinb_OBUF[6]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_64),
        .Q(dinb_OBUF[7]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[8] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_63),
        .Q(dinb_OBUF[8]),
        .R(spimaster_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[9] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_37),
        .D(spimaster_n_62),
        .Q(dinb_OBUF[9]),
        .R(spimaster_n_5));
  LUT2 #(
    .INIT(4'h8)) 
    \memreal[0][5]_i_1 
       (.I0(clkb_OBUF),
        .I1(resetn_IBUF),
        .O(p_11_out));
  FDRE #(
    .INIT(1'b0)) 
    \memreal_reg[0][0] 
       (.C(p_11_out),
        .CE(\<const1> ),
        .D(Q[0]),
        .Q(\memreal_reg_n_0_[0][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \memreal_reg[0][1] 
       (.C(p_11_out),
        .CE(\<const1> ),
        .D(Q[1]),
        .Q(\memreal_reg_n_0_[0][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \memreal_reg[0][2] 
       (.C(p_11_out),
        .CE(\<const1> ),
        .D(Q[2]),
        .Q(\memreal_reg_n_0_[0][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \memreal_reg[0][3] 
       (.C(p_11_out),
        .CE(\<const1> ),
        .D(Q[3]),
        .Q(\memreal_reg_n_0_[0][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \memreal_reg[0][4] 
       (.C(p_11_out),
        .CE(\<const1> ),
        .D(Q[4]),
        .Q(\memreal_reg_n_0_[0][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \memreal_reg[0][5] 
       (.C(p_11_out),
        .CE(\<const1> ),
        .D(Q[5]),
        .Q(\memreal_reg_n_0_[0][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numchips_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[8]),
        .Q(numchips[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numchips_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[9]),
        .Q(numchips[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numchips_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[10]),
        .Q(numchips[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numchips_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[11]),
        .Q(numchips[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numchips_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[12]),
        .Q(numchips[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numchips_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[13]),
        .Q(numchips[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numchips_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[14]),
        .Q(numchips[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numchips_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[15]),
        .Q(numchips[7]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000001010100)) 
    \numregs[7]_i_1 
       (.I0(\numregs[7]_i_2_n_0 ),
        .I1(\memreal_reg_n_0_[0][0] ),
        .I2(\memreal_reg_n_0_[0][1] ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\di_i[38]_i_4_n_0 ),
        .O(\numregs[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \numregs[7]_i_2 
       (.I0(\memreal_reg_n_0_[0][3] ),
        .I1(\memreal_reg_n_0_[0][5] ),
        .I2(\memreal_reg_n_0_[0][4] ),
        .I3(\memreal_reg_n_0_[0][2] ),
        .O(\numregs[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \numregs_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[0]),
        .Q(\numregs_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numregs_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[1]),
        .Q(\numregs_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numregs_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[2]),
        .Q(\numregs_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numregs_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[3]),
        .Q(\numregs_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numregs_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[4]),
        .Q(\numregs_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numregs_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[5]),
        .Q(\numregs_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numregs_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[6]),
        .Q(\numregs_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \numregs_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(\numregs[7]_i_1_n_0 ),
        .D(doutb_IBUF[7]),
        .Q(\numregs_reg_n_0_[7] ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h00F2002288FAF8FA)) 
    \p_chip[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\addr[5]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(numchips[0]),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .I5(p_chip_reg__0[0]),
        .O(\p_chip[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_chip[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\addr[5]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_rchip[1]_i_4_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .I5(\p_chip[1]_i_4_n_0 ),
        .O(\p_chip[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \p_chip[1]_i_4 
       (.I0(p_chip_reg__0[1]),
        .I1(p_chip_reg__0[0]),
        .O(\p_chip[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \p_chip[2]_i_4 
       (.I0(p_chip_reg__0[2]),
        .I1(p_chip_reg__0[0]),
        .I2(p_chip_reg__0[1]),
        .O(\p_chip[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_chip[2]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\addr[5]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_rchip[2]_i_3_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .I5(\p_chip[2]_i_4_n_0 ),
        .O(\p_chip[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_chip[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\addr[5]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_rchip[3]_i_5_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .I5(\p_chip[3]_i_4_n_0 ),
        .O(\p_chip[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \p_chip[3]_i_4 
       (.I0(p_chip_reg__0[3]),
        .I1(p_chip_reg__0[1]),
        .I2(p_chip_reg__0[0]),
        .I3(p_chip_reg__0[2]),
        .O(\p_chip[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \p_chip[4]_i_2 
       (.I0(p_chip_reg__0[1]),
        .I1(p_chip_reg__0[0]),
        .I2(p_chip_reg__0[2]),
        .O(\p_chip[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \p_chip[4]_i_5 
       (.I0(p_chip_reg__0[4]),
        .I1(p_chip_reg__0[2]),
        .I2(p_chip_reg__0[0]),
        .I3(p_chip_reg__0[1]),
        .I4(p_chip_reg__0[3]),
        .O(\p_chip[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_chip[4]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\addr[5]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_rchip[4]_i_4_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .I5(\p_chip[4]_i_5_n_0 ),
        .O(\p_chip[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \p_chip[5]_i_2 
       (.I0(p_chip_reg__0[1]),
        .I1(p_chip_reg__0[0]),
        .I2(p_chip_reg__0[2]),
        .I3(p_chip_reg__0[3]),
        .I4(p_chip_reg__0[4]),
        .O(\p_chip[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_chip[5]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\addr[5]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_rchip[5]_i_5_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .I5(\p_chip[5]_i_5_n_0 ),
        .O(\p_chip[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \p_chip[5]_i_5 
       (.I0(p_chip_reg__0[5]),
        .I1(p_chip_reg__0[1]),
        .I2(p_chip_reg__0[0]),
        .I3(p_chip_reg__0[2]),
        .I4(p_chip_reg__0[3]),
        .I5(p_chip_reg__0[4]),
        .O(\p_chip[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \p_chip[6]_i_2 
       (.I0(p_chip_reg__0[5]),
        .I1(\p_chip[5]_i_2_n_0 ),
        .I2(p_chip_reg__0[6]),
        .O(\p_chip[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_chip[6]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\addr[5]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_rchip[6]_i_5_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .I5(\p_chip[6]_i_5_n_0 ),
        .O(\p_chip[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \p_chip[6]_i_5 
       (.I0(p_chip_reg__0[6]),
        .I1(\p_chip[5]_i_2_n_0 ),
        .I2(p_chip_reg__0[5]),
        .O(\p_chip[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \p_chip[7]_i_3 
       (.I0(\p_rchip[7]_i_11_n_0 ),
        .I1(p_chip_reg__0[4]),
        .I2(p_chip_reg__0[3]),
        .I3(p_chip_reg__0[5]),
        .O(\p_chip[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \p_chip[7]_i_5 
       (.I0(\p_chip[5]_i_2_n_0 ),
        .I1(p_chip_reg__0[6]),
        .I2(p_chip_reg__0[5]),
        .I3(p_chip_reg__0[7]),
        .O(\p_chip[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFA88FAF8F2002200)) 
    \p_chip[7]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\addr[5]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_rchip[7]_i_12_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .I5(\p_chip[7]_i_9_n_0 ),
        .O(\p_chip[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \p_chip[7]_i_8 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(\addr[1]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\FSM_onehot_state[12]_i_3_n_0 ),
        .O(\p_chip[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \p_chip[7]_i_9 
       (.I0(p_chip_reg__0[7]),
        .I1(p_chip_reg__0[5]),
        .I2(p_chip_reg__0[6]),
        .I3(\p_chip[5]_i_2_n_0 ),
        .O(\p_chip[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p_chip_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_38),
        .D(p_0_in__3[0]),
        .Q(p_chip_reg__0[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_chip_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_38),
        .D(p_0_in__3[1]),
        .Q(p_chip_reg__0[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_chip_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_38),
        .D(p_0_in__3[2]),
        .Q(p_chip_reg__0[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_chip_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_38),
        .D(p_0_in__3[3]),
        .Q(p_chip_reg__0[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_chip_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_38),
        .D(p_0_in__3[4]),
        .Q(p_chip_reg__0[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_chip_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_38),
        .D(p_0_in__3[5]),
        .Q(p_chip_reg__0[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_chip_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_38),
        .D(p_0_in__3[6]),
        .Q(p_chip_reg__0[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_chip_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_38),
        .D(p_0_in__3[7]),
        .Q(p_chip_reg__0[7]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_rchip[1]_i_4 
       (.I0(numchips[0]),
        .I1(numchips[1]),
        .O(\p_rchip[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \p_rchip[1]_i_5 
       (.I0(p_ram[1]),
        .I1(p_ram[0]),
        .O(\p_rchip[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \p_rchip[2]_i_3 
       (.I0(numchips[1]),
        .I1(numchips[0]),
        .I2(numchips[2]),
        .O(\p_rchip[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \p_rchip[2]_i_4 
       (.I0(p_ram[2]),
        .I1(p_ram[1]),
        .I2(p_ram[0]),
        .O(\p_rchip[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFE100E100000000)) 
    \p_rchip[2]_i_5 
       (.I0(p_ram[0]),
        .I1(p_ram[1]),
        .I2(p_ram[2]),
        .I3(\readregs[4][6]_i_2_n_0 ),
        .I4(\p_rchip[2]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\p_rchip[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \p_rchip[3]_i_2 
       (.I0(p_ram[2]),
        .I1(p_ram[1]),
        .I2(p_ram[0]),
        .I3(p_rchip_reg__0[3]),
        .O(\p_rchip[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \p_rchip[3]_i_5 
       (.I0(numchips[2]),
        .I1(numchips[0]),
        .I2(numchips[1]),
        .I3(numchips[3]),
        .O(\p_rchip[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \p_rchip[3]_i_6 
       (.I0(p_rchip_reg__0[3]),
        .I1(p_ram[0]),
        .I2(p_ram[1]),
        .I3(p_ram[2]),
        .O(\p_rchip[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \p_rchip[4]_i_2 
       (.I0(p_ram[0]),
        .I1(p_ram[1]),
        .I2(p_ram[2]),
        .O(\p_rchip[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \p_rchip[4]_i_4 
       (.I0(numchips[3]),
        .I1(numchips[1]),
        .I2(numchips[0]),
        .I3(numchips[2]),
        .I4(numchips[4]),
        .O(\p_rchip[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \p_rchip[4]_i_5 
       (.I0(p_rchip_reg__0[4]),
        .I1(p_ram[2]),
        .I2(p_ram[1]),
        .I3(p_ram[0]),
        .I4(p_rchip_reg__0[3]),
        .O(\p_rchip[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \p_rchip[4]_i_6 
       (.I0(\p_rchip[4]_i_5_n_0 ),
        .I1(\readregs[4][6]_i_2_n_0 ),
        .I2(\p_rchip[4]_i_4_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\p_rchip[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \p_rchip[4]_i_8 
       (.I0(p_chip_reg__0[5]),
        .I1(p_chip_reg__0[3]),
        .I2(p_chip_reg__0[4]),
        .O(\p_rchip[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \p_rchip[5]_i_2 
       (.I0(p_rchip_reg__0[3]),
        .I1(p_rchip_reg__0[4]),
        .I2(p_ram[2]),
        .I3(p_ram[1]),
        .I4(p_ram[0]),
        .O(\p_rchip[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \p_rchip[5]_i_5 
       (.I0(numchips[4]),
        .I1(numchips[3]),
        .I2(numchips[2]),
        .I3(numchips[0]),
        .I4(numchips[1]),
        .I5(numchips[5]),
        .O(\p_rchip[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \p_rchip[5]_i_6 
       (.I0(p_rchip_reg__0[5]),
        .I1(p_rchip_reg__0[3]),
        .I2(p_rchip_reg__0[4]),
        .I3(p_ram[2]),
        .I4(p_ram[1]),
        .I5(p_ram[0]),
        .O(\p_rchip[5]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \p_rchip[6]_i_2 
       (.I0(p_rchip_reg__0[5]),
        .I1(\p_rchip[5]_i_2_n_0 ),
        .I2(p_rchip_reg__0[6]),
        .O(\p_rchip[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \p_rchip[6]_i_5 
       (.I0(numchips[5]),
        .I1(\p_rchip[7]_i_15_n_0 ),
        .I2(numchips[6]),
        .O(\p_rchip[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \p_rchip[6]_i_6 
       (.I0(p_rchip_reg__0[6]),
        .I1(\p_rchip[5]_i_2_n_0 ),
        .I2(p_rchip_reg__0[5]),
        .O(\p_rchip[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \p_rchip[7]_i_10 
       (.I0(\FSM_onehot_state[4]_i_4_n_0 ),
        .I1(\p_rchip[7]_i_14_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[12] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\FSM_onehot_state[12]_i_3_n_0 ),
        .O(\p_rchip[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \p_rchip[7]_i_11 
       (.I0(p_chip_reg__0[1]),
        .I1(p_chip_reg__0[0]),
        .I2(p_chip_reg__0[2]),
        .I3(p_chip_reg__0[6]),
        .I4(p_chip_reg__0[7]),
        .O(\p_rchip[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \p_rchip[7]_i_12 
       (.I0(\p_rchip[7]_i_15_n_0 ),
        .I1(numchips[6]),
        .I2(numchips[5]),
        .I3(numchips[7]),
        .O(\p_rchip[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \p_rchip[7]_i_13 
       (.I0(p_rchip_reg__0[7]),
        .I1(p_rchip_reg__0[5]),
        .I2(p_rchip_reg__0[6]),
        .I3(\p_rchip[5]_i_2_n_0 ),
        .O(\p_rchip[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \p_rchip[7]_i_14 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .O(\p_rchip[7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \p_rchip[7]_i_15 
       (.I0(numchips[1]),
        .I1(numchips[0]),
        .I2(numchips[2]),
        .I3(numchips[3]),
        .I4(numchips[4]),
        .O(\p_rchip[7]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \p_rchip[7]_i_7 
       (.I0(p_rchip_reg__0[5]),
        .I1(p_rchip_reg__0[6]),
        .I2(\p_rchip[5]_i_2_n_0 ),
        .O(\p_rchip[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rchip_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_35),
        .D(p_0_in__1[0]),
        .Q(p_ram[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rchip_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_35),
        .D(p_0_in__1[1]),
        .Q(p_ram[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rchip_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_35),
        .D(p_0_in__1[2]),
        .Q(p_ram[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rchip_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_35),
        .D(p_0_in__1[3]),
        .Q(p_rchip_reg__0[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rchip_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_35),
        .D(p_0_in__1[4]),
        .Q(p_rchip_reg__0[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rchip_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_35),
        .D(p_0_in__1[5]),
        .Q(p_rchip_reg__0[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rchip_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_35),
        .D(p_0_in__1[6]),
        .Q(p_rchip_reg__0[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rchip_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_35),
        .D(p_0_in__1[7]),
        .Q(p_rchip_reg__0[7]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h0000EEFE)) 
    \p_reg[0]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\readregs[4][6]_i_2_n_0 ),
        .I4(p_reg_reg__0[0]),
        .O(p_0_in__2[0]));
  LUT6 #(
    .INIT(64'h00EEEE0000FEFE00)) 
    \p_reg[1]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(p_reg_reg__0[1]),
        .I4(p_reg_reg__0[0]),
        .I5(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__2[1]));
  LUT6 #(
    .INIT(64'h00EEEE0000FEFE00)) 
    \p_reg[2]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(p_reg_reg__0[2]),
        .I4(\p_reg[2]_i_2_n_0 ),
        .I5(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \p_reg[2]_i_2 
       (.I0(p_reg_reg__0[1]),
        .I1(p_reg_reg__0[0]),
        .O(\p_reg[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEE00FE00)) 
    \p_reg[3]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_reg[3]_i_2_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \p_reg[3]_i_2 
       (.I0(p_reg_reg__0[2]),
        .I1(p_reg_reg__0[1]),
        .I2(p_reg_reg__0[0]),
        .I3(p_reg_reg__0[3]),
        .O(\p_reg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEE00FE00)) 
    \p_reg[4]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_reg[4]_i_2_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__2[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \p_reg[4]_i_2 
       (.I0(p_reg_reg__0[1]),
        .I1(p_reg_reg__0[0]),
        .I2(p_reg_reg__0[2]),
        .I3(p_reg_reg__0[3]),
        .I4(p_reg_reg__0[4]),
        .O(\p_reg[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEE00FE00)) 
    \p_reg[5]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_reg[5]_i_2_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__2[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \p_reg[5]_i_2 
       (.I0(p_reg_reg__0[1]),
        .I1(p_reg_reg__0[0]),
        .I2(p_reg_reg__0[4]),
        .I3(p_reg_reg__0[3]),
        .I4(p_reg_reg__0[2]),
        .I5(p_reg_reg__0[5]),
        .O(\p_reg[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEE00FE00)) 
    \p_reg[6]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_reg[6]_i_2_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__2[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \p_reg[6]_i_2 
       (.I0(p_reg_reg__0[2]),
        .I1(p_reg_reg__0[3]),
        .I2(p_reg_reg__0[4]),
        .I3(\p_reg[2]_i_2_n_0 ),
        .I4(p_reg_reg__0[5]),
        .I5(p_reg_reg__0[6]),
        .O(\p_reg[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEE00FE00)) 
    \p_reg[7]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_reg[7]_i_2_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__2[7]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \p_reg[7]_i_2 
       (.I0(\p_reg[7]_i_3_n_0 ),
        .I1(p_reg_reg__0[5]),
        .I2(p_reg_reg__0[6]),
        .I3(p_reg_reg__0[7]),
        .O(\p_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \p_reg[7]_i_3 
       (.I0(p_reg_reg__0[2]),
        .I1(p_reg_reg__0[3]),
        .I2(p_reg_reg__0[4]),
        .I3(p_reg_reg__0[0]),
        .I4(p_reg_reg__0[1]),
        .O(\p_reg[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p_reg_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__2[0]),
        .Q(p_reg_reg__0[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_reg_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__2[1]),
        .Q(p_reg_reg__0[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_reg_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__2[2]),
        .Q(p_reg_reg__0[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_reg_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__2[3]),
        .Q(p_reg_reg__0[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_reg_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__2[4]),
        .Q(p_reg_reg__0[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_reg_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__2[5]),
        .Q(p_reg_reg__0[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_reg_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__2[6]),
        .Q(p_reg_reg__0[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_reg_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__2[7]),
        .Q(p_reg_reg__0[7]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h0000EEFE)) 
    \p_rreg[0]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\readregs[4][6]_i_2_n_0 ),
        .I4(p_ram[3]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'h00EEEE0000FEFE00)) 
    \p_rreg[1]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(p_ram[4]),
        .I4(p_ram[3]),
        .I5(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'h00EEEE0000FEFE00)) 
    \p_rreg[2]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(p_ram[5]),
        .I4(\p_rreg[2]_i_2_n_0 ),
        .I5(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \p_rreg[2]_i_2 
       (.I0(p_ram[3]),
        .I1(p_ram[4]),
        .O(\p_rreg[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEE00FE00)) 
    \p_rreg[3]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_rreg[3]_i_2_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \p_rreg[3]_i_2 
       (.I0(p_ram[5]),
        .I1(p_ram[3]),
        .I2(p_ram[4]),
        .I3(p_rreg_reg__0[3]),
        .O(\p_rreg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEE00FE00)) 
    \p_rreg[4]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_rreg[4]_i_2_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \p_rreg[4]_i_2 
       (.I0(p_ram[3]),
        .I1(p_ram[4]),
        .I2(p_ram[5]),
        .I3(p_rreg_reg__0[3]),
        .I4(p_rreg_reg__0[4]),
        .O(\p_rreg[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEE00FE00)) 
    \p_rreg[5]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_rreg[5]_i_2_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \p_rreg[5]_i_2 
       (.I0(p_ram[3]),
        .I1(p_ram[4]),
        .I2(p_rreg_reg__0[4]),
        .I3(p_rreg_reg__0[3]),
        .I4(p_ram[5]),
        .I5(p_rreg_reg__0[5]),
        .O(\p_rreg[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEE00FE00)) 
    \p_rreg[6]_i_1 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_rreg[6]_i_2_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \p_rreg[6]_i_2 
       (.I0(p_ram[5]),
        .I1(p_rreg_reg__0[3]),
        .I2(p_rreg_reg__0[4]),
        .I3(\p_rreg[2]_i_2_n_0 ),
        .I4(p_rreg_reg__0[5]),
        .I5(p_rreg_reg__0[6]),
        .O(\p_rreg[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEE00FE00)) 
    \p_rreg[7]_i_2 
       (.I0(\di_i[38]_i_4_n_0 ),
        .I1(\delay[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\p_rreg[7]_i_4_n_0 ),
        .I4(\readregs[4][6]_i_2_n_0 ),
        .O(p_0_in__0[7]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \p_rreg[7]_i_4 
       (.I0(\p_rreg[7]_i_9_n_0 ),
        .I1(p_rreg_reg__0[5]),
        .I2(p_rreg_reg__0[6]),
        .I3(p_rreg_reg__0[7]),
        .O(\p_rreg[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \p_rreg[7]_i_5 
       (.I0(p_reg_reg__0[4]),
        .I1(\numregs_reg_n_0_[4] ),
        .I2(p_reg_reg__0[3]),
        .I3(\numregs_reg_n_0_[3] ),
        .O(\p_rreg[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \p_rreg[7]_i_6 
       (.I0(p_reg_reg__0[1]),
        .I1(\numregs_reg_n_0_[1] ),
        .I2(p_reg_reg__0[0]),
        .I3(\numregs_reg_n_0_[0] ),
        .O(\p_rreg[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \p_rreg[7]_i_7 
       (.I0(p_reg_reg__0[5]),
        .I1(\numregs_reg_n_0_[5] ),
        .I2(p_reg_reg__0[2]),
        .I3(\numregs_reg_n_0_[2] ),
        .O(\p_rreg[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \p_rreg[7]_i_8 
       (.I0(p_reg_reg__0[7]),
        .I1(\numregs_reg_n_0_[7] ),
        .I2(p_reg_reg__0[6]),
        .I3(\numregs_reg_n_0_[6] ),
        .O(\p_rreg[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \p_rreg[7]_i_9 
       (.I0(p_ram[5]),
        .I1(p_rreg_reg__0[3]),
        .I2(p_rreg_reg__0[4]),
        .I3(p_ram[4]),
        .I4(p_ram[3]),
        .O(\p_rreg[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rreg_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__0[0]),
        .Q(p_ram[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rreg_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__0[1]),
        .Q(p_ram[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rreg_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__0[2]),
        .Q(p_ram[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rreg_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__0[3]),
        .Q(p_rreg_reg__0[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rreg_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__0[4]),
        .Q(p_rreg_reg__0[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rreg_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__0[5]),
        .Q(p_rreg_reg__0[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rreg_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__0[6]),
        .Q(p_rreg_reg__0[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \p_rreg_reg[7] 
       (.C(clkb_OBUF_BUFG),
        .CE(spimaster_n_39),
        .D(p_0_in__0[7]),
        .Q(p_rreg_reg__0[7]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \readregs[0][6]_i_1 
       (.I0(\memreal_reg_n_0_[0][2] ),
        .I1(\memreal_reg_n_0_[0][0] ),
        .I2(\memreal_reg_n_0_[0][1] ),
        .I3(\readregs[0][6]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\di_i[38]_i_4_n_0 ),
        .O(\readregs[0][6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \readregs[0][6]_i_2 
       (.I0(\memreal_reg_n_0_[0][4] ),
        .I1(\memreal_reg_n_0_[0][5] ),
        .I2(\memreal_reg_n_0_[0][3] ),
        .O(\readregs[0][6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \readregs[4][6]_i_1 
       (.I0(\readregs[4][6]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\di_i[38]_i_4_n_0 ),
        .O(\readregs[4][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \readregs[4][6]_i_2 
       (.I0(\memreal_reg_n_0_[0][0] ),
        .I1(\memreal_reg_n_0_[0][1] ),
        .I2(\memreal_reg_n_0_[0][2] ),
        .I3(\memreal_reg_n_0_[0][3] ),
        .I4(\memreal_reg_n_0_[0][5] ),
        .I5(\memreal_reg_n_0_[0][4] ),
        .O(\readregs[4][6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[0][0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[0]),
        .Q(\readregs_reg[0]_0 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[0][1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[1]),
        .Q(\readregs_reg[0]_0 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[0][2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[2]),
        .Q(\readregs_reg[0]_0 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[0][3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[3]),
        .Q(\readregs_reg[0]_0 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[0][4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[4]),
        .Q(\readregs_reg[0]_0 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[0][5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[5]),
        .Q(\readregs_reg[0]_0 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[0][6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[6]),
        .Q(\readregs_reg[0]_0 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[1][0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[8]),
        .Q(\readregs_reg[1]_1 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[1][1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[9]),
        .Q(\readregs_reg[1]_1 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[1][2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[10]),
        .Q(\readregs_reg[1]_1 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[1][3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[11]),
        .Q(\readregs_reg[1]_1 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[1][4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[12]),
        .Q(\readregs_reg[1]_1 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[1][5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[13]),
        .Q(\readregs_reg[1]_1 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[1][6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[14]),
        .Q(\readregs_reg[1]_1 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[2][0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[16]),
        .Q(\readregs_reg[2]_2 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[2][1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[17]),
        .Q(\readregs_reg[2]_2 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[2][2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[18]),
        .Q(\readregs_reg[2]_2 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[2][3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[19]),
        .Q(\readregs_reg[2]_2 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[2][4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[20]),
        .Q(\readregs_reg[2]_2 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[2][5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[21]),
        .Q(\readregs_reg[2]_2 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[2][6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[22]),
        .Q(\readregs_reg[2]_2 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[3][0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[24]),
        .Q(\readregs_reg[3]_3 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[3][1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[25]),
        .Q(\readregs_reg[3]_3 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[3][2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[26]),
        .Q(\readregs_reg[3]_3 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[3][3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[27]),
        .Q(\readregs_reg[3]_3 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[3][4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[28]),
        .Q(\readregs_reg[3]_3 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[3][5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[29]),
        .Q(\readregs_reg[3]_3 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[3][6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[0][6]_i_1_n_0 ),
        .D(doutb_IBUF[30]),
        .Q(\readregs_reg[3]_3 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[4][0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[0]),
        .Q(\readregs_reg[4]_4 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[4][1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[1]),
        .Q(\readregs_reg[4]_4 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[4][2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[2]),
        .Q(\readregs_reg[4]_4 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[4][3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[3]),
        .Q(\readregs_reg[4]_4 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[4][4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[4]),
        .Q(\readregs_reg[4]_4 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[4][5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[5]),
        .Q(\readregs_reg[4]_4 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[4][6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[6]),
        .Q(\readregs_reg[4]_4 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[5][0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[8]),
        .Q(\readregs_reg[5]_5 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[5][1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[9]),
        .Q(\readregs_reg[5]_5 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[5][2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[10]),
        .Q(\readregs_reg[5]_5 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[5][3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[11]),
        .Q(\readregs_reg[5]_5 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[5][4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[12]),
        .Q(\readregs_reg[5]_5 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[5][5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[13]),
        .Q(\readregs_reg[5]_5 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[5][6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[14]),
        .Q(\readregs_reg[5]_5 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[6][0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[16]),
        .Q(\readregs_reg[6]_6 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[6][1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[17]),
        .Q(\readregs_reg[6]_6 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[6][2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[18]),
        .Q(\readregs_reg[6]_6 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[6][3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[19]),
        .Q(\readregs_reg[6]_6 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[6][4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[20]),
        .Q(\readregs_reg[6]_6 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[6][5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[21]),
        .Q(\readregs_reg[6]_6 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \readregs_reg[6][6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\readregs[4][6]_i_1_n_0 ),
        .D(doutb_IBUF[22]),
        .Q(\readregs_reg[6]_6 [6]),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    reseta_OBUF_inst_i_1
       (.I0(resetn_IBUF),
        .O(SR));
  SPI_MASTER_WRAP spimaster
       (.D({spimaster_n_6,spimaster_n_7,spimaster_n_8,spimaster_n_9,spimaster_n_10,spimaster_n_11,spimaster_n_12,spimaster_n_13,spimaster_n_14,spimaster_n_15,spimaster_n_16}),
        .E(spimaster_n_33),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state[12]_i_5_n_0 ),
        .\FSM_onehot_state_reg[10] (\FSM_onehot_state[5]_i_3_n_0 ),
        .\FSM_onehot_state_reg[10]_0 (\FSM_onehot_state[10]_i_3_n_0 ),
        .\FSM_onehot_state_reg[11] (\FSM_onehot_state[6]_i_4_n_0 ),
        .\FSM_onehot_state_reg[11]_0 (\FSM_onehot_state[4]_i_2_n_0 ),
        .\FSM_onehot_state_reg[12] (\p_rchip[7]_i_10_n_0 ),
        .\FSM_onehot_state_reg[1] (\p_chip[4]_i_6_n_0 ),
        .\FSM_onehot_state_reg[1]_0 (\p_chip[2]_i_5_n_0 ),
        .\FSM_onehot_state_reg[1]_1 (\p_chip[0]_i_2_n_0 ),
        .\FSM_onehot_state_reg[1]_2 (\p_chip[1]_i_2_n_0 ),
        .\FSM_onehot_state_reg[1]_3 (\p_chip[3]_i_2_n_0 ),
        .\FSM_onehot_state_reg[1]_4 (\p_chip[5]_i_3_n_0 ),
        .\FSM_onehot_state_reg[1]_5 (\p_chip[6]_i_3_n_0 ),
        .\FSM_onehot_state_reg[1]_6 (\p_chip[7]_i_6_n_0 ),
        .\FSM_onehot_state_reg[2] (\FSM_onehot_state[6]_i_2_n_0 ),
        .\FSM_onehot_state_reg[2]_0 (we_i_4_n_0),
        .\FSM_onehot_state_reg[2]_1 (\FSM_onehot_state[4]_i_4_n_0 ),
        .\FSM_onehot_state_reg[4] (\FSM_onehot_state[12]_i_3_n_0 ),
        .\FSM_onehot_state_reg[5] (\FSM_onehot_state[0]_i_4_n_0 ),
        .\FSM_onehot_state_reg[7] (\FSM_onehot_state[0]_i_3_n_0 ),
        .\FSM_onehot_state_reg[7]_0 (\p_rchip[4]_i_6_n_0 ),
        .\FSM_onehot_state_reg[7]_1 (\addr[5]_i_3_n_0 ),
        .\FSM_onehot_state_reg[8] (\p_chip[7]_i_8_n_0 ),
        .\FSM_onehot_state_reg[9] (\FSM_onehot_state[10]_i_2_n_0 ),
        .Q({\memreal_reg_n_0_[0][2] ,\memreal_reg_n_0_[0][0] }),
        .\addr_reg[0] (spimaster_n_36),
        .clkb_OBUF_BUFG(clkb_OBUF_BUFG),
        .csn_OBUF(csn_OBUF),
        .\delay_reg[6] (\di_i[38]_i_4_n_0 ),
        .\delay_reg[6]_0 (\FSM_onehot_state[12]_i_6_n_0 ),
        .\di_i_reg[0] (spimaster_n_34),
        .\di_i_reg[39] (spimaster_n_3),
        .\di_i_reg[39]_0 ({\di_i_reg_n_0_[39] ,\di_i_reg_n_0_[38] ,\di_i_reg_n_0_[37] ,\di_i_reg_n_0_[36] ,\di_i_reg_n_0_[35] ,\di_i_reg_n_0_[34] ,\di_i_reg_n_0_[33] ,\di_i_reg_n_0_[32] ,\di_i_reg_n_0_[31] ,\di_i_reg_n_0_[30] ,\di_i_reg_n_0_[29] ,\di_i_reg_n_0_[28] ,\di_i_reg_n_0_[27] ,\di_i_reg_n_0_[26] ,\di_i_reg_n_0_[25] ,\di_i_reg_n_0_[24] ,\di_i_reg_n_0_[23] ,\di_i_reg_n_0_[22] ,\di_i_reg_n_0_[21] ,\di_i_reg_n_0_[20] ,\di_i_reg_n_0_[19] ,\di_i_reg_n_0_[18] ,\di_i_reg_n_0_[17] ,\di_i_reg_n_0_[16] ,\di_i_reg_n_0_[15] ,\di_i_reg_n_0_[14] ,\di_i_reg_n_0_[13] ,\di_i_reg_n_0_[12] ,\di_i_reg_n_0_[11] ,\di_i_reg_n_0_[10] ,\di_i_reg_n_0_[9] ,\di_i_reg_n_0_[8] ,\di_i_reg_n_0_[7] ,\di_i_reg_n_0_[6] ,\di_i_reg_n_0_[5] ,\di_i_reg_n_0_[4] ,\di_i_reg_n_0_[3] ,\di_i_reg_n_0_[2] ,\di_i_reg_n_0_[1] ,\di_i_reg_n_0_[0] }),
        .\din_reg[0] (spimaster_n_37),
        .\din_reg[31] (spimaster_n_5),
        .\din_reg[31]_0 ({spimaster_n_40,spimaster_n_41,spimaster_n_42,spimaster_n_43,spimaster_n_44,spimaster_n_45,spimaster_n_46,spimaster_n_47,spimaster_n_48,spimaster_n_49,spimaster_n_50,spimaster_n_51,spimaster_n_52,spimaster_n_53,spimaster_n_54,spimaster_n_55,spimaster_n_56,spimaster_n_57,spimaster_n_58,spimaster_n_59,spimaster_n_60,spimaster_n_61,spimaster_n_62,spimaster_n_63,spimaster_n_64,spimaster_n_65,spimaster_n_66,spimaster_n_67,spimaster_n_68,spimaster_n_69,spimaster_n_70,spimaster_n_71}),
        .doutb_IBUF(doutb_IBUF[1:0]),
        .\memreal_reg[0][0] (\readregs[4][6]_i_2_n_0 ),
        .\memreal_reg[0][1] (\FSM_onehot_state[7]_i_2_n_0 ),
        .\memreal_reg[0][1]_0 (\addr[5]_i_4_n_0 ),
        .\memreal_reg[0][2] (\FSM_onehot_state[8]_i_4_n_0 ),
        .\memreal_reg[0][4] (\FSM_onehot_state[2]_i_3_n_0 ),
        .miso_IBUF(miso_IBUF),
        .mosi_OBUF(mosi_OBUF),
        .\numchips_reg[0] (\p_rchip[1]_i_4_n_0 ),
        .\numchips_reg[1] (\p_rchip[2]_i_3_n_0 ),
        .\numchips_reg[1]_0 (numchips[1:0]),
        .\numchips_reg[2] (\p_rchip[3]_i_5_n_0 ),
        .\numchips_reg[3] (\p_rchip[4]_i_4_n_0 ),
        .\numchips_reg[4] (\p_rchip[5]_i_5_n_0 ),
        .\numchips_reg[5] (\p_rchip[6]_i_5_n_0 ),
        .\numchips_reg[6] (\p_rchip[7]_i_12_n_0 ),
        .out({\FSM_onehot_state_reg_n_0_[12] ,\FSM_onehot_state_reg_n_0_[11] ,\FSM_onehot_state_reg_n_0_[10] ,\FSM_onehot_state_reg_n_0_[9] ,\FSM_onehot_state_reg_n_0_[8] ,\FSM_onehot_state_reg_n_0_[7] ,\FSM_onehot_state_reg_n_0_[6] ,\FSM_onehot_state_reg_n_0_[5] ,\FSM_onehot_state_reg_n_0_[4] ,\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,\FSM_onehot_state_reg_n_0_[1] ,\FSM_onehot_state_reg_n_0_[0] }),
        .\p_chip_reg[0] (spimaster_n_38),
        .\p_chip_reg[1] (\p_rchip[7]_i_11_n_0 ),
        .\p_chip_reg[1]_0 (\p_chip[1]_i_4_n_0 ),
        .\p_chip_reg[1]_1 (\p_chip[4]_i_2_n_0 ),
        .\p_chip_reg[1]_2 (\p_chip[5]_i_2_n_0 ),
        .\p_chip_reg[2] (\p_chip[2]_i_4_n_0 ),
        .\p_chip_reg[3] (\FSM_onehot_state[12]_i_9_n_0 ),
        .\p_chip_reg[3]_0 (\p_chip[3]_i_4_n_0 ),
        .\p_chip_reg[4] (\p_chip[4]_i_5_n_0 ),
        .\p_chip_reg[4]_0 (\p_chip[7]_i_3_n_0 ),
        .\p_chip_reg[5] (\p_chip[5]_i_5_n_0 ),
        .\p_chip_reg[5]_0 (\p_rchip[4]_i_8_n_0 ),
        .\p_chip_reg[5]_1 (p_chip_reg__0[5:0]),
        .\p_chip_reg[5]_2 (\p_chip[6]_i_2_n_0 ),
        .\p_chip_reg[6] (\p_chip[6]_i_5_n_0 ),
        .\p_chip_reg[6]_0 (\p_chip[7]_i_5_n_0 ),
        .\p_chip_reg[7] (p_0_in__3),
        .\p_chip_reg[7]_0 (\p_chip[7]_i_9_n_0 ),
        .\p_rchip_reg[0] (spimaster_n_35),
        .\p_rchip_reg[0]_0 (\p_rchip[2]_i_5_n_0 ),
        .\p_rchip_reg[0]_1 (\p_rchip[4]_i_2_n_0 ),
        .\p_rchip_reg[1] (\p_rchip[1]_i_5_n_0 ),
        .\p_rchip_reg[2] (\p_rchip[2]_i_4_n_0 ),
        .\p_rchip_reg[2]_0 (\p_rchip[3]_i_2_n_0 ),
        .\p_rchip_reg[3] (\p_rchip[5]_i_2_n_0 ),
        .\p_rchip_reg[3]_0 (\p_rchip[3]_i_6_n_0 ),
        .\p_rchip_reg[4] (\p_rchip[4]_i_5_n_0 ),
        .\p_rchip_reg[5] (\p_rchip[5]_i_6_n_0 ),
        .\p_rchip_reg[5]_0 (\p_rchip[7]_i_7_n_0 ),
        .\p_rchip_reg[5]_1 (\p_rchip[6]_i_2_n_0 ),
        .\p_rchip_reg[6] (\FSM_onehot_state[6]_i_3_n_0 ),
        .\p_rchip_reg[6]_0 (we_i_3_n_0),
        .\p_rchip_reg[6]_1 (\p_rchip[6]_i_6_n_0 ),
        .\p_rchip_reg[7] (p_0_in__1),
        .\p_rchip_reg[7]_0 ({p_rchip_reg__0,p_ram[2:0]}),
        .\p_rchip_reg[7]_1 (\p_rchip[7]_i_13_n_0 ),
        .\p_reg_reg[0] (spimaster_n_39),
        .\p_reg_reg[1] (\p_rreg[7]_i_6_n_0 ),
        .\p_reg_reg[4] (\p_rreg[7]_i_5_n_0 ),
        .\p_reg_reg[5] (\p_rreg[7]_i_7_n_0 ),
        .\p_reg_reg[6] (\FSM_onehot_state[11]_i_3_n_0 ),
        .\p_reg_reg[7] (\p_rreg[7]_i_8_n_0 ),
        .\p_reg_reg[7]_0 (\FSM_onehot_state[0]_i_5_n_0 ),
        .\p_rreg_reg[1] (\FSM_onehot_state[12]_i_11_n_0 ),
        .\p_rreg_reg[4] (\FSM_onehot_state[12]_i_10_n_0 ),
        .\p_rreg_reg[7] (p_rreg_reg__0[7]),
        .sclk_OBUF(sclk_OBUF),
        .\t_chip_reg[0] (\addr[5]_i_7_n_0 ),
        .we1(we1),
        .we_reg(spimaster_n_4),
        .web_OBUF(web_OBUF),
        .wren_i_reg(spimaster_n_2),
        .wren_i_reg_0(wren_i_reg_n_0));
  LUT5 #(
    .INIT(32'h00000200)) 
    \t_chip[2]_i_1 
       (.I0(\memreal_reg_n_0_[0][1] ),
        .I1(\numregs[7]_i_2_n_0 ),
        .I2(\memreal_reg_n_0_[0][0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\di_i[38]_i_4_n_0 ),
        .O(\t_chip[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_chip_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\t_chip[2]_i_1_n_0 ),
        .D(doutb_IBUF[0]),
        .Q(\t_chip_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \t_chip_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\t_chip[2]_i_1_n_0 ),
        .D(doutb_IBUF[1]),
        .Q(\t_chip_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \t_chip_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\t_chip[2]_i_1_n_0 ),
        .D(doutb_IBUF[2]),
        .Q(\t_chip_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg_reg[0] 
       (.C(clkb_OBUF_BUFG),
        .CE(\t_chip[2]_i_1_n_0 ),
        .D(doutb_IBUF[8]),
        .Q(\t_reg_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg_reg[1] 
       (.C(clkb_OBUF_BUFG),
        .CE(\t_chip[2]_i_1_n_0 ),
        .D(doutb_IBUF[9]),
        .Q(\t_reg_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg_reg[2] 
       (.C(clkb_OBUF_BUFG),
        .CE(\t_chip[2]_i_1_n_0 ),
        .D(doutb_IBUF[10]),
        .Q(\t_reg_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg_reg[3] 
       (.C(clkb_OBUF_BUFG),
        .CE(\t_chip[2]_i_1_n_0 ),
        .D(doutb_IBUF[11]),
        .Q(\t_reg_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg_reg[4] 
       (.C(clkb_OBUF_BUFG),
        .CE(\t_chip[2]_i_1_n_0 ),
        .D(doutb_IBUF[12]),
        .Q(\t_reg_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg_reg[5] 
       (.C(clkb_OBUF_BUFG),
        .CE(\t_chip[2]_i_1_n_0 ),
        .D(doutb_IBUF[13]),
        .Q(\t_reg_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg_reg[6] 
       (.C(clkb_OBUF_BUFG),
        .CE(\t_chip[2]_i_1_n_0 ),
        .D(doutb_IBUF[14]),
        .Q(\t_reg_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    t_write_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\t_chip[2]_i_1_n_0 ),
        .D(doutb_IBUF[15]),
        .Q(t_write),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h00010000)) 
    we_i_3
       (.I0(\addr[5]_i_9_n_0 ),
        .I1(we_i_5_n_0),
        .I2(p_rchip_reg__0[6]),
        .I3(p_rchip_reg__0[7]),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(we_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    we_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(we_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    we_i_5
       (.I0(p_ram[1]),
        .I1(\t_chip_reg_n_0_[1] ),
        .I2(p_ram[0]),
        .I3(\t_chip_reg_n_0_[0] ),
        .O(we_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    we_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(spimaster_n_4),
        .Q(web_OBUF),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    wren_i_reg
       (.C(clkb_OBUF_BUFG),
        .CE(\<const1> ),
        .D(spimaster_n_2),
        .Q(wren_i_reg_n_0),
        .R(\<const0> ));
endmodule
