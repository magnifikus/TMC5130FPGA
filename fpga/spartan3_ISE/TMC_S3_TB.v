`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:56:09 11/26/2015
// Design Name:   TMC_S3
// Module Name:   d:/data/zynq/spartan3/TMC_Spartan3/TMC_S3_TB.v
// Project Name:  TMC_Spartan3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TMC_S3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TMC_S3_TB;

	// Inputs
	reg clk;
	reg resetn;
	reg miso;
	reg ssclk;
	reg scsn;
	reg smosi;

	// Outputs
	wire sclk;
	wire csn;
	wire mosi;
	wire smiso;
	wire step0;
	wire step1;
	wire step2;
	wire step3;
	wire dir0;
	wire dir1;
	wire dir2;
	wire dir3;
	wire enn0;
	wire enn1;
	wire enn2;
	wire enn3;
	wire led0;
	wire led1;
	wire led2;
	wire led3;
	wire dce0;
	wire dci0;
	wire dco0;
	wire dce1;
	wire dci1;
	wire dco1;
	wire dce2;
	wire dci2;
	wire dco2;
	wire dce3;
	wire dci3;
	wire dco3;
	

	// Instantiate the Unit Under Test (UUT)
	TMC_S3 uut (
		.clk(clk),  
		.sclk(sclk), 
		.btn0(resetn),
		.btn1(resetn),
		.csn(csn), 
		.mosi(mosi), 
		.miso(miso), 
		.ssclk(ssclk), 
		.scsn(scsn), 
		.smosi(smosi), 
		.smiso(smiso), 
		.step0(step0), 
		.step1(step1), 
		.step2(step2), 
		.step3(step3),
		.dir0(dir0), 
		.dir1(dir1), 
		.dir2(dir2), 
		.dir3(dir3),
		.enn0(enn0), 
		.enn1(enn1), 
		.enn2(enn2),
		.enn3(enn3),
		.led0(led0),
		.led1(led1),
		.led2(led2),
		.led3(led3),
		.dce0(dce0),
		.dci0(dci0),
		.dco0(dco0),
		.dce1(dce1),
		.dci1(dci1),
		.dco1(dco1),
		.dce2(dce2),
		.dci2(dci2),
		.dco2(dco2),
		.dce3(dce3),
		.dci3(dci3),
		.dco3(dco3)
	);
	always begin
		clk = 0;
		#8
		clk = 1;
		#8;
	end
	reg[7:0] recb;
	reg[31:0] receiver;
	initial begin
		// Initialize Inputs
		resetn = 0;
		miso = 1;
		ssclk = 1;
		scsn = 1;
		smosi = 0;
		#32;
		resetn = 1;
		#20000;
		/*
		set_reg('h00,'h00000202);
		set_reg('h05,'h00000202);
		set_reg('h01,'h00000001);
		get_reg('h01,receiver);
		get_reg('h01,receiver);
		get_reg('h01,receiver);
		get_reg('h01,receiver);
		set_reg('h02,'h00000300);
		set_reg('h01,'h00000002);
		get_reg('h01,receiver);
		get_reg('h01,receiver);
		get_reg('h01,receiver);
		get_reg('h01,receiver);
		get_reg('h03,receiver);
		
      #50000
		spi_xfer(1,'h01,recb); // cmd
		spi_xfer(3,'hCA,recb);
		spi_xfer(3,'h00,recb); // pw1
		spi_xfer(3,'h10,recb);
		spi_xfer(3,'h02,recb); // pw2
		spi_xfer(3,'h20,recb);
		spi_xfer(3,'h03,recb); // pw3
		spi_xfer(3,'h30,recb);
		spi_xfer(3,'h04,recb); // pw4
		spi_xfer(3,'h40,recb); 
		spi_xfer(3,'h06,recb); // io1
		spi_xfer(3,'h60,recb);
		spi_xfer(3,'h07,recb); // io2
		spi_xfer(3,'h70,recb); 
		spi_xfer(3,'h08,recb); // pwm1
		spi_xfer(3,'h80,recb); 
		spi_xfer(3,'h09,recb); // pwm2
		spi_xfer(3,'h90,recb); 
		spi_xfer(3,'h0e,recb); // crc16
		spi_xfer(3,'hdb,recb); 
		spi_xfer(3,'h00,recb); // 16x0
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); // 32x0
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); 
		spi_xfer(2,'h00,recb); 
		#50000
		spi_xfer(1,'h01,recb); // cmd
		spi_xfer(3,'hCA,recb);
		spi_xfer(3,'h00,recb); // pw1
		spi_xfer(3,'h00,recb);
		spi_xfer(3,'h00,recb); // pw2
		spi_xfer(3,'h00,recb);
		spi_xfer(3,'h00,recb); // pw3
		spi_xfer(3,'h00,recb);
		spi_xfer(3,'h04,recb); // pw4
		spi_xfer(3,'h40,recb); 
		spi_xfer(3,'h06,recb); // io1
		spi_xfer(3,'h60,recb);
		spi_xfer(3,'h07,recb); // io2
		spi_xfer(3,'h70,recb); 
		spi_xfer(3,'h08,recb); // pwm1
		spi_xfer(3,'h80,recb); 
		spi_xfer(3,'h09,recb); // pwm2
		spi_xfer(3,'h90,recb); 
		spi_xfer(3,'h0e,recb); // crc16
		spi_xfer(3,'hdb,recb); 
		spi_xfer(3,'h00,recb); // 16x0
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); // 32x0
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); 
		spi_xfer(2,'h00,recb); 
		//pw1 pw2 pw3 pw4  io1 io2   pwm1 pwm3  crc8  24x0       32x0 
		// Add stimulus here
	*/
	end
	
	 task set_reg;
		input[5:0] register;
		input[31:0] value;
		begin
		spi_xfer(1,'h02,recb); // cmd
		spi_xfer(3,'h80+register,recb); // reg0 w
		spi_xfer(3,value[31:24],recb); 
		spi_xfer(3,value[23:16],recb);
		spi_xfer(3,value[15:8],recb); 
		spi_xfer(3,value[7:0],recb);
		spi_xfer(3,'h0a,recb); // crc16
		spi_xfer(3,'h0b,recb);
		spi_xfer(3,'h00,recb); // 64x0 +1
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); 
		spi_xfer(2,'h00,recb);  // end
		#20000;
		end
	endtask;
	task get_reg;
		input[5:0] register;
		output[31:0] value;
		begin
		spi_xfer(1,'h02,recb); // cmd
		spi_xfer(3,register,recb); // reg0 w
		spi_xfer(3,0,recb); 
		spi_xfer(3,0,recb);
		spi_xfer(3,0,recb); 
		spi_xfer(3,0,recb);
		spi_xfer(3,'h0a,recb); // crc16
		spi_xfer(3,'h0b,recb);
		spi_xfer(3,'h00,recb); // 64x0 +1
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,value[31:24]); 
		spi_xfer(3,'h00,value[23:16]); 
		spi_xfer(3,'h00,value[15:8]); 
		spi_xfer(3,'h00,value[7:0]); 
		spi_xfer(3,'h00,recb); 
		spi_xfer(3,'h00,recb); 
		spi_xfer(2,'h00,recb);  // end
		#20000;
		end
	endtask;
    task spi_xfer;
		input [1:0] mode;
		input [7:0]  send;
      output [7:0] recv;
		begin
		scsn <= 0;
		ssclk <= 1;
		if (mode == 0 || mode == 1) 
			#200;
		smosi <= send[7];
		ssclk <= 0;
		#30
		ssclk <= 1;
		recv[7] <= smiso;
		#30
		smosi <= send[6];
		ssclk <= 0;
		#30
		ssclk <= 1;
		recv[6] <= smiso;
		#30
		smosi <= send[5];
		ssclk <= 0;
		#30
		ssclk <= 1;
		recv[5] <= smiso;
		#30
		smosi <= send[4];
		ssclk <= 0;
		#30
		ssclk <= 1;
		recv[4] <= smiso;
		#30
		smosi <= send[3];
		ssclk <= 0;
		#30
		ssclk <= 1;
		recv[3] <= smiso;
		#30
		smosi <= send[2];
		ssclk <= 0;
		#30
		ssclk <= 1;
		recv[2] <= smiso;
		#30
		smosi <= send[1];
		ssclk <= 0;
		#30
		ssclk <= 1;
		recv[1] <= smiso;
		#30
		smosi <= send[0];
		ssclk <= 0;
		#30
		ssclk <= 1;
		recv[0] <= smiso;
		if (mode == 0 || mode == 2) begin
			#200
			scsn <= 1;
		end else #30;
		end
	 endtask
endmodule

