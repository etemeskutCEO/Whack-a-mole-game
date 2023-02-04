`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:20:57 01/19/2023 
// Design Name: 
// Module Name:    buttondetector 
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
module buttondetector(buttoninput, clk, out,rst
    );
	 

	 input buttoninput,clk,rst;
	 output out;
	 wire ffclk;
	 wire m1,m1not,m2,m2not;
	 integer count = 0;
	 
	 
	 clkforbuttons clk1(clk,ffclk);
	 flipflop ff1(buttoninput,ffclk,m1,m1not,rst);
	 flipflop ff2(m1,ffclk,m2,m2not,rst);
	 
	 assign out = m1 & m2not;

//This module predicts bouncing problem and takes only one input when buttons pressed by using two flip flops.
endmodule
