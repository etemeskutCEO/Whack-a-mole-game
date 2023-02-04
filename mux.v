`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:38:22 01/20/2023 
// Design Name: 
// Module Name:    mux 
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
module mux(q,control,a,b
);
    input control,a,b;
	 output reg q;
	 
	 wire notcontrol;
	 
	 always @(control or a or b or notcontrol) begin
	 q = (control & a) | (notcontrol & b);
	 end
	 
	 not(notcontrol, control);

endmodule
