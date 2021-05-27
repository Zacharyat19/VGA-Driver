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
// CREATED		"Wed May 26 22:56:02 2021"

module VGADisplayModule(
	FiftyMHzclk,
	reset_N,
	VGA_VS,
	VGA_HS,
	vDisplay,
	hDisplay,
	hCol,
	vRow
);


input wire	FiftyMHzclk;
input wire	reset_N;
output wire	VGA_VS;
output wire	VGA_HS;
output wire	vDisplay;
output wire	hDisplay;
output wire	[10:0] hCol;
output wire	[10:0] vRow;

wire	[10:0] hCount;
wire	hDisplay_ALTERA_SYNTHESIZED;
wire	hSync;
wire	[31:0] q;
wire	resetH;
wire	resetV;
wire	[10:0] vCount;
wire	vDisplay_ALTERA_SYNTHESIZED;
wire	vSync;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_22 = 1;
assign	SYNTHESIZED_WIRE_23 = 1;
assign	SYNTHESIZED_WIRE_12 = 1;
assign	SYNTHESIZED_WIRE_17 = 1;



assign	SYNTHESIZED_WIRE_20 =  ~hDisplay_ALTERA_SYNTHESIZED;

assign	SYNTHESIZED_WIRE_13 = resetH | reset_N;


comparator	b2v_inst110(
	.a(hCount),
	
	
	
	
	
	.gte(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst110.b = 144;
	defparam	b2v_inst110.N = 11;


comparator	b2v_inst111(
	.a(vCount),
	
	
	
	
	
	.gte(SYNTHESIZED_WIRE_18));
	defparam	b2v_inst111.b = 35;
	defparam	b2v_inst111.N = 11;

assign	hDisplay_ALTERA_SYNTHESIZED = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1;


assign	hSync = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3;


comparator	b2v_inst12(
	.a(hCount),
	
	
	
	.lte(SYNTHESIZED_WIRE_1)
	
	);
	defparam	b2v_inst12.b = 784;
	defparam	b2v_inst12.N = 11;

assign	vSync = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5;


upEnCounter	b2v_inst1222(
	.clk(FiftyMHzclk),
	.reset(reset_N),
	.up(SYNTHESIZED_WIRE_22),
	.En_N(SYNTHESIZED_WIRE_22),
	.q(q));
	defparam	b2v_inst1222.N = 32;

assign	SYNTHESIZED_WIRE_8 = resetV | reset_N;


upEnCounter	b2v_inst133(
	.clk(resetH),
	.reset(SYNTHESIZED_WIRE_8),
	.up(SYNTHESIZED_WIRE_23),
	.En_N(SYNTHESIZED_WIRE_23),
	.q(vCount));
	defparam	b2v_inst133.N = 11;


upEnCounter	b2v_inst1333(
	.clk(q[0]),
	.reset(SYNTHESIZED_WIRE_11),
	.up(SYNTHESIZED_WIRE_12),
	.En_N(hDisplay_ALTERA_SYNTHESIZED),
	.q(hCol));
	defparam	b2v_inst1333.N = 11;


upEnCounter	b2v_inst13333(
	.clk(q[0]),
	.reset(SYNTHESIZED_WIRE_13),
	.up(SYNTHESIZED_WIRE_22),
	.En_N(SYNTHESIZED_WIRE_22),
	.q(hCount));
	defparam	b2v_inst13333.N = 11;


comparator	b2v_inst14(
	.a(vCount),
	
	
	
	
	
	.gte(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst14.b = 2;
	defparam	b2v_inst14.N = 11;


upEnCounter	b2v_inst144(
	.clk(resetH),
	.reset(SYNTHESIZED_WIRE_16),
	.up(SYNTHESIZED_WIRE_17),
	.En_N(vDisplay_ALTERA_SYNTHESIZED),
	.q(vRow));
	defparam	b2v_inst144.N = 11;


comparator	b2v_inst15(
	.a(vCount),
	
	
	
	
	.gt(resetV)
	);
	defparam	b2v_inst15.b = 525;
	defparam	b2v_inst15.N = 11;

assign	vDisplay_ALTERA_SYNTHESIZED = SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_19;


comparator	b2v_inst17(
	.a(vCount),
	
	
	
	.lte(SYNTHESIZED_WIRE_19)
	
	);
	defparam	b2v_inst17.b = 515;
	defparam	b2v_inst17.N = 11;

assign	SYNTHESIZED_WIRE_21 =  ~vDisplay_ALTERA_SYNTHESIZED;


comparator	b2v_inst19(
	.a(vCount),
	
	
	
	.lte(SYNTHESIZED_WIRE_5)
	
	);
	defparam	b2v_inst19.b = 525;
	defparam	b2v_inst19.N = 11;


comparator	b2v_inst21(
	.a(hCount),
	
	
	
	.lte(SYNTHESIZED_WIRE_3)
	
	);
	defparam	b2v_inst21.b = 800;
	defparam	b2v_inst21.N = 11;


assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_20 | reset_N;


assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_21 | reset_N;



comparator	b2v_inst7(
	.a(hCount),
	
	
	
	
	.gt(resetH)
	);
	defparam	b2v_inst7.b = 800;
	defparam	b2v_inst7.N = 11;


comparator	b2v_inst9(
	.a(hCount),
	
	
	
	
	
	.gte(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst9.b = 96;
	defparam	b2v_inst9.N = 11;

assign	VGA_VS = vSync;
assign	VGA_HS = hSync;
assign	vDisplay = vDisplay_ALTERA_SYNTHESIZED;
assign	hDisplay = hDisplay_ALTERA_SYNTHESIZED;

endmodule
