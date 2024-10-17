// Copyright (C) 2023  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 22.1std.1 Build 917 02/14/2023 SC Standard Edition"
// CREATED		"Wed Nov  1 12:54:04 2023"

module lab08(
	X1,
	Xc3,
	Xc2,
	Xc1,
	X0,
	X2,
	X3,
	S,
	y
);


input wire	X1;
input wire	Xc3;
input wire	Xc2;
input wire	Xc1;
input wire	X0;
input wire	X2;
input wire	X3;
input wire	[1:0] S;
output wire	[3:0] y;

wire	[3:0] y_ALTERA_SYNTHESIZED;





mux4to1	b2v_inst(
	.w0(X3),
	.w1(X2),
	.w2(X1),
	.w3(X0),
	.s(S),
	.f(y_ALTERA_SYNTHESIZED[3]));


mux4to1	b2v_inst1(
	.w0(X2),
	.w1(X1),
	.w2(X0),
	.w3(Xc1),
	.s(S),
	.f(y_ALTERA_SYNTHESIZED[2]));


mux4to1	b2v_inst2(
	.w0(X1),
	.w1(X0),
	.w2(Xc1),
	.w3(Xc2),
	.s(S),
	.f(y_ALTERA_SYNTHESIZED[1]));


mux4to1	b2v_inst3(
	.w0(X0),
	.w1(Xc1),
	.w2(Xc2),
	.w3(Xc3),
	.s(S),
	.f(y_ALTERA_SYNTHESIZED[0]));

assign	y = y_ALTERA_SYNTHESIZED;

endmodule
