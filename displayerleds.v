`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:01 01/20/2023 
// Design Name: 
// Module Name:    displayerleds 
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
module displayerleds(inputnumber,ss_out,en_out,clk,clk2
    );
	 
	 //In this module we basically just display the 12 bit bcd number in 7-segment display.
	 input clk;
	 output reg clk2;
	 input [11:0] inputnumber;
	 output reg [6:0] ss_out;
	 output reg [3:0] en_out;
	 
	 integer count1;
	 initial count1 = 0;
	 
	 integer count2;
	 initial count2=0;
	 
	 initial clk2=0;
	 
	 //Clock must at a optimal level because we first show the first number the second then third.
	 //So it must fast because we don't want the human eye to detect the transitions but also
    //it must be slow because we don't want LED to burn or too fast transitions.	 
	 always @(posedge clk) begin 
	 count2 = count2 + 1;
	 if(count2 == 50000) begin
	 clk2 = ~clk2;
	 count2 = 1;
	 
	 end
	 end
	 
	 
	 always @(posedge clk2)begin
	 if(count1 == 0) begin
	   case(inputnumber[3:0])
		      4'b0000: ss_out = 7'b0000001;
            4'b0001: ss_out = 7'b1001111;
            4'b0010: ss_out = 7'b0010010;
            4'b0011: ss_out = 7'b0000110;
            4'b0100: ss_out = 7'b1001100;
            4'b0101: ss_out = 7'b0100100;
            4'b0110: ss_out = 7'b0100000;
            4'b0111: ss_out = 7'b0001111;
            4'b1000: ss_out = 7'b0000000;
            4'b1001: ss_out = 7'b0001100;
				endcase
				en_out = 4'b1110;
				count1=1;
		end
	 
	 else if(count1 == 1) begin
	    case(inputnumber[7:4])
		      4'b0000: ss_out = 7'b0000001;
            4'b0001: ss_out = 7'b1001111;
            4'b0010: ss_out = 7'b0010010;
            4'b0011: ss_out = 7'b0000110;
            4'b0100: ss_out = 7'b1001100;
            4'b0101: ss_out = 7'b0100100;
            4'b0110: ss_out = 7'b0100000;
            4'b0111: ss_out = 7'b0001111;
            4'b1000: ss_out = 7'b0000000;
            4'b1001: ss_out = 7'b0001100;
				endcase
				en_out = 4'b1101;
				count1=2;
				end
		else begin
		   case(inputnumber[11:8])
			   4'b0000: ss_out = 7'b0000001;
            4'b0001: ss_out = 7'b1001111;
            4'b0010: ss_out = 7'b0010010;
            4'b0011: ss_out = 7'b0000110;
            4'b0100: ss_out = 7'b1001100;
            4'b0101: ss_out = 7'b0100100;
            4'b0110: ss_out = 7'b0100000;
            4'b0111: ss_out = 7'b0001111;
            4'b1000: ss_out = 7'b0000000;
            4'b1001: ss_out = 7'b0001100;
				endcase
				en_out = 4'b1011;
				count1=0;
		end
		end
		
endmodule
