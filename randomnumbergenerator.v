`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:51 01/19/2023 
// Design Name: 
// Module Name:    randomnumbergenerator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module lfsr(q, clk, rst, seed, load,doutnot);

//This module generates a 4 bit random number by using flip flops
//and a xor gate.It also has a seed loader that we can change and load.
//Also we can reset it anytime we want.
output [3:0] q;
output [3:0] doutnot;
input [3:0] seed;
input load,clk;
input rst;
wire [3:0] state_out;
wire [3:0] state_in;
wire nextbit;

    flipflop F[3:0] (state_in, clk,state_out,doutnot,rst);
    mux M1[3:0] (state_in, load, seed, {state_out[2],
    state_out[1],
    state_out[0],
    nextbit});
xor G1(nextbit, state_out[2], state_out[3]);
assign q = {state_out[2],state_out[1],state_out[0],nextbit};
endmodule
