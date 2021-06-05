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
// CREATED		"Fri Jun 04 20:57:14 2021"

module DesignProjectFinal(
	FiftyMHzclk,
	reset_KEY1,
	shiftRGB_SW9,
	irInput,
	inRGB,
	VGA_VS,
	VGA_HS,
	VGA_RGB
);


input wire	FiftyMHzclk;
input wire	reset_KEY1;
input wire	shiftRGB_SW9;
input wire	irInput;
input wire	[5:0] inRGB;
output wire	VGA_VS;
output wire	VGA_HS;
output wire	[11:0] VGA_RGB;

wire	clk;
wire	clkOneHz;
wire	[2:0] clkStop;
wire	clkTEkHz;
wire	clkTwentyFiveMHz;
wire	clkTwoHz;
wire	clkWait;
wire	[10:0] hCol;
wire	hSync;
wire	[2:0] irDir;
wire	irInput_N;
wire	isDisplay;
wire	[25:0] q;
wire	reset_N;
wire	[10:0] spriteCol;
wire	[15:0] spriteRGB;
wire	[10:0] spriteRow;
wire	[10:0] vRow;
wire	vSync;
wire	[15:0] SYNTHESIZED_WIRE_0;
wire	[2:0] SYNTHESIZED_WIRE_1;





newBackgroundModule	b2v_inst(
	.shiftRGB_SW9(shiftRGB_SW9),
	.reset_N(reset_N),
	.clkSlow(clkTwoHz),
	.clk(clk),
	.isDisplay(isDisplay),
	.hCol(hCol),
	.inRGB(inRGB),
	.spriteCol(spriteCol),
	.spriteRGB(spriteRGB),
	.spriteRow(spriteRow),
	.vRow(vRow),
	.VGA_RGB(VGA_RGB));


clockModule	b2v_inst1(
	.FiftyMHzclk(clk),
	.reset_N(reset_N),
	.clk25MHz(clkTwentyFiveMHz),
	
	.clk2Hz(clkTwoHz),
	
	.q(q));


notLinkROM	b2v_inst2(
	.clock(clk),
	.address(SYNTHESIZED_WIRE_0),
	.q(spriteRGB));


newVGAModule	b2v_inst21(
	.reset_N(reset_N),
	.clk(clk),
	.TwentyFiveMHzclk(clkTwentyFiveMHz),
	.VGA_VS(vSync),
	.VGA_HS(hSync),
	.isDisplay(isDisplay),
	.hCol(hCol),
	.vRow(vRow));

assign	reset_N =  ~reset_KEY1;

assign	irInput_N =  ~irInput;


irModuleSimple	b2v_inst3(
	.irInput(irInput_N),
	.clkWait(clkWait),
	.reset_N(reset_N),
	.irDir(irDir));


newAddressConverter	b2v_inst4(
	.clkMove(q[19]),
	.reset_N(reset_N),
	.dirNEWS(SYNTHESIZED_WIRE_1),
	.hCol(hCol),
	.vRow(vRow),
	.clkWait(clkWait),
	.mifAddr(SYNTHESIZED_WIRE_0),
	.spriteCol(spriteCol),
	.spriteRow(spriteRow));



NTwoMUX	b2v_inst7(
	.s(clkWait),
	.d(clkStop),
	.e(irDir),
	.q(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst7.N = 3;

assign	VGA_VS = vSync;
assign	clk = FiftyMHzclk;
assign	VGA_HS = hSync;
assign	clkStop[2] = 0;
assign	clkStop[1] = 0;
assign	clkStop[0] = 0;

endmodule
