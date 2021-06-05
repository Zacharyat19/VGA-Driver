// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Fri Jun 04 20:52:32 2021"

module irModuleSimple(
	irInput,
	clkWait,
	reset_N,
	irDir
);


input wire	irInput;
input wire	clkWait;
input wire	reset_N;
output wire	[2:0] irDir;

wire	cntEn;
wire	cntReset;
wire	[2:0] irDir_ALTERA_SYNTHESIZED;
wire	irReset;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_10;
wire	[31:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_11;
wire	[1:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_10 = 1;
assign	SYNTHESIZED_WIRE_11 = 1;
assign	SYNTHESIZED_WIRE_9 = 1;




upEnCounter	b2v_inst(
	.clk(irInput),
	.reset(SYNTHESIZED_WIRE_0),
	.up(SYNTHESIZED_WIRE_10),
	.En_N(SYNTHESIZED_WIRE_10),
	.q(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst.N = 32;

assign	SYNTHESIZED_WIRE_8 = irReset | reset_N;


assign	SYNTHESIZED_WIRE_4 = cntReset | reset_N;

assign	SYNTHESIZED_WIRE_0 = irReset | reset_N;


comparator	b2v_inst3(
	.a(SYNTHESIZED_WIRE_3),
	
	
	
	
	.gt(cntEn)
	);
	defparam	b2v_inst3.b = 0;
	defparam	b2v_inst3.N = 32;


upEnCounter	b2v_inst4(
	.clk(cntEn),
	.reset(SYNTHESIZED_WIRE_4),
	.up(SYNTHESIZED_WIRE_11),
	.En_N(SYNTHESIZED_WIRE_11),
	.q(irDir_ALTERA_SYNTHESIZED));
	defparam	b2v_inst4.N = 3;


comparator	b2v_inst5(
	.a(irDir_ALTERA_SYNTHESIZED),
	
	
	
	
	.gt(cntReset)
	);
	defparam	b2v_inst5.b = 4;
	defparam	b2v_inst5.N = 3;



comparator	b2v_inst7(
	.a(SYNTHESIZED_WIRE_7),
	
	
	
	
	.gt(irReset)
	);
	defparam	b2v_inst7.b = 1;
	defparam	b2v_inst7.N = 2;



upEnCounter	b2v_inst9(
	.clk(clkWait),
	.reset(SYNTHESIZED_WIRE_8),
	.up(SYNTHESIZED_WIRE_9),
	.En_N(cntEn),
	.q(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst9.N = 2;

assign	irDir = irDir_ALTERA_SYNTHESIZED;

endmodule
