`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:48:08 01/19/2023 
// Design Name: 
// Module Name:    pointdetector 
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
/////////////////////////////////////////////////////////////////////////////////
module flipflop(din,clk,dout,doutnot,rst
   );
	
	//basic flip flop module
	input din,clk,rst;
	output reg dout,doutnot;
	
	always @(posedge clk) begin
	if(rst)
	dout = 0;
	else
	dout = din;
	assign doutnot = ~din;
	end
	endmodule
	