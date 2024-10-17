// WARNING: Do NOT edit the input and output ports in this file in a text
// editor if you plan to continue editing the block that represents it in
// the Block Editor! File corruption is VERY likely to occur.

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


// Generated by Quartus Prime Version 22.1 (Build Build 917 02/14/2023)
// Created on Tue Sep 26 14:11:00 2023

//  Module Declaration
module powersaving
(
// {{ALTERA_ARGS_BEGIN}} DO NOT REMOVE THIS LINE!
P, T, H, F
// {{ALTERA_ARGS_END}} DO NOT REMOVE THIS LINE!
);
// Port Declaration

// {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
input P;
input T;
input H;
output F;
// {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
assign F = (P&T&H);


endmodule
