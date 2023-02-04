`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:34:34 01/19/2023 
// Design Name: 
// Module Name:    asd 
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
module clkdivider(monkeyclk,clk1s
    );
	 
	 //this clock divider takes the clock in the basys card
	 //and transforms it to 1.33 Hz clock
	 integer count;
    initial count = 0;
	 input clk1s;
	 output reg monkeyclk;
	 initial monkeyclk = 0;

	 
	 always @(posedge clk1s) begin //0.75s clk
	 count = count + 1;
	 if(count == 37500000) begin
	 count = 1;
	 monkeyclk = ~monkeyclk;
	 end
	 end

endmodule
