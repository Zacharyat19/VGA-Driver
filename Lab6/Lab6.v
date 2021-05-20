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
// CREATED		"Wed May 19 15:11:54 2021"

module Lab6(
	FiftyMHzclk,
	reset_KEY1,
	Red1_SW5,
	Red0_SW4,
	Blue0_SW0,
	Blue1_SW1,
	Green0_SW2,
	Green1_SW3,
	VGA_VS,
	VGA_HS,
	cCount,
	dCount,
	VGA_B,
	VGA_G,
	VGA_R
);


input wire	FiftyMHzclk;
input wire	reset_KEY1;
input wire	Red1_SW5;
input wire	Red0_SW4;
input wire	Blue0_SW0;
input wire	Blue1_SW1;
input wire	Green0_SW2;
input wire	Green1_SW3;
output wire	VGA_VS;
output wire	VGA_HS;
output wire	[31:0] cCount;
output wire	[31:0] dCount;
output wire	[3:0] VGA_B;
output wire	[3:0] VGA_G;
output wire	[3:0] VGA_R;

wire	[3:0] BColor;
wire	[3:0] GColor;
wire	hDisplay;
wire	hSync;
wire	[1:0] inBColor;
wire	[1:0] inGColor;
wire	[1:0] inRColor;
wire	isDisplay;
wire	[23:0] q;
wire	[3:0] RColor;
wire	vDisplay;
wire	vSync;
wire	SYNTHESIZED_WIRE_3;





syncHCount	b2v_inst(
	.clk(q[0]),
	.reset(SYNTHESIZED_WIRE_3),
	.hSync(hSync),
	.hDisplay(hDisplay),
	.cCount(cCount));
	defparam	b2v_inst.bHPorch = 144;
	defparam	b2v_inst.fHPorch = 784;
	defparam	b2v_inst.N = 32;
	defparam	b2v_inst.syncH = 96;
	defparam	b2v_inst.totalH = 800;


colorDecoder	b2v_inst10(
	.inColor(inGColor),
	.outColor(GColor));


colorDecoder	b2v_inst11(
	.inColor(inBColor),
	.outColor(BColor));


syncVCount	b2v_inst23(
	.clk(hSync),
	.reset(SYNTHESIZED_WIRE_3),
	.vSync(vSync),
	.vDisplay(vDisplay),
	.cCount(dCount));
	defparam	b2v_inst23.bVPorch = 35;
	defparam	b2v_inst23.fVPorch = 515;
	defparam	b2v_inst23.N = 32;
	defparam	b2v_inst23.syncV = 2;
	defparam	b2v_inst23.totalV = 525;

assign	SYNTHESIZED_WIRE_3 =  ~reset_KEY1;


FourOneMUX	b2v_inst28(
	.s(isDisplay),
	.d(RColor),
	.q(VGA_R));


FourOneMUX	b2v_inst29(
	.s(isDisplay),
	.d(GColor),
	.q(VGA_G));


FourOneMUX	b2v_inst30(
	.s(isDisplay),
	.d(BColor),
	.q(VGA_B));


counter	b2v_inst32(
	.clk(FiftyMHzclk),
	.reset(SYNTHESIZED_WIRE_3),
	.q(q));
	defparam	b2v_inst32.N = 24;

assign	isDisplay = vDisplay & hDisplay;


colorDecoder	b2v_inst9(
	.inColor(inRColor),
	.outColor(RColor));

assign	VGA_VS = vSync;
assign	VGA_HS = hSync;
assign	inBColor[0] = Blue0_SW0;
assign	inBColor[1] = Blue1_SW1;
assign	inGColor[0] = Green0_SW2;
assign	inGColor[1] = Green1_SW3;
assign	inRColor[1] = Red1_SW5;
assign	inRColor[0] = Red0_SW4;

endmodule
