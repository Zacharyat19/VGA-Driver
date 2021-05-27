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
// CREATED		"Tue May 25 23:13:19 2021"

module Lab7(
	FiftyMHzclk,
	reset_KEY1,
	inRGB,
	VGA_VS,
	VGA_HS,
	VGA_RGB
);


input wire	FiftyMHzclk;
input wire	reset_KEY1;
input wire	[5:0] inRGB;
output wire	VGA_VS;
output wire	VGA_HS;
output wire	[11:0] VGA_RGB;

wire	clk;
wire	[10:0] hCol;
wire	hDisplay;
wire	hSync;
wire	isDisplay;
wire	[11:0] newSprite_RGB;
wire	reset_N;
wire	[11:0] RGB;
wire	[15:0] Sprite_RGB;
wire	vDisplay;
wire	[10:0] vRow;
wire	vSync;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[15:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;





backgroundModule	b2v_inst(
	.isDisplay(isDisplay),
	.inRGB(inRGB),
	.upCount(vRow),
	.VGA_RGB(RGB));


comparator	b2v_inst10(
	.a(hCol),
	
	
	.lt(SYNTHESIZED_WIRE_1)
	
	
	);
	defparam	b2v_inst10.b = 256;
	defparam	b2v_inst10.N = 11;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1;


NTwoMUX	b2v_inst12(
	.s(SYNTHESIZED_WIRE_2),
	.d0(Sprite_RGB[15:4]),
	.d1(RGB),
	.q(newSprite_RGB));
	defparam	b2v_inst12.N = 12;

assign	reset_N =  ~reset_KEY1;


VGADisplayModule	b2v_inst3(
	.reset_N(reset_N),
	.FiftyMHzclk(clk),
	.VGA_HS(hSync),
	.VGA_VS(vSync),
	.vDisplay(vDisplay),
	.hDisplay(hDisplay),
	.hCol(hCol),
	.vRow(vRow));


notLinkROM	b2v_inst4(
	.clock(clk),
	.address(SYNTHESIZED_WIRE_3),
	.q(Sprite_RGB));


addressConverter	b2v_inst5(
	.hColIn(hCol),
	.vRowIn(vRow),
	.convertedAddr(SYNTHESIZED_WIRE_3));


NTwoMUX	b2v_inst6(
	.s(SYNTHESIZED_WIRE_4),
	.d0(RGB),
	.d1(newSprite_RGB),
	.q(VGA_RGB));
	defparam	b2v_inst6.N = 12;


comparator	b2v_inst7(
	.a(vRow),
	
	
	.lt(SYNTHESIZED_WIRE_0)
	
	
	);
	defparam	b2v_inst7.b = 256;
	defparam	b2v_inst7.N = 11;

assign	isDisplay = vDisplay & hDisplay;


comparator	b2v_inst9(
	.a(Sprite_RGB[3:0]),
	.eq(SYNTHESIZED_WIRE_2)
	
	
	
	
	);
	defparam	b2v_inst9.b = 0;
	defparam	b2v_inst9.N = 4;

assign	VGA_VS = vSync;
assign	clk = FiftyMHzclk;
assign	VGA_HS = hSync;

endmodule
