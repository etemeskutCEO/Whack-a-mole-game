`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:13:40 01/20/2023 
// Design Name: 
// Module Name:    clkforbuttons 
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
module clkforbuttons(kartclk,ffclk
    );
	 input kartclk;
	 integer count;
	 initial count = 0;
	 output reg ffclk;
	 initial ffclk = 0;
	 
	 
	 always @(posedge kartclk) begin
	 count = count +1;
	 if(count == 125000) begin //0.005 sn clk
	 count = 1;
	 ffclk = ~ffclk;
	 end
	 end

endmodule
