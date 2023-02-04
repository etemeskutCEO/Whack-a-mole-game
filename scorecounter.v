`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:40:43 01/20/2023 
// Design Name: 
// Module Name:    pointcounter 
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
module pointcounter(out,butout0,butout1,butout2,butout3,points
    );
	 
	 input [3:0] out;
	 input butout0,butout1,butout2,butout3;
	 output reg [7:0] points = 8'b00000000;
	 
	 
	 always @(butout0,butout1,butout2,butout3) begin
	 if(out[0] == 1 && butout0 == 1)begin
	 points = points + 8'b00000001;
	 end
	 
	 else if(out[1] == 1 && butout1 == 1)begin
	 points = points + 8'b00000001;
	 end
	 
	 else if(out[2] == 1 && butout2 == 1)begin
	 points = points + 8'b00000001;
	 end
	 
	 else if(out[3] == 1 && butout3 == 1)begin
	 points = points + 8'b00000001;
	 end
	 
	 else begin
	 points = points - 8'b00000001;
	 end
	 end
	 

//This module is counting the players score. If button is pressed while the LED is on he gets a 1 point otherwise he loses 1.
endmodule
