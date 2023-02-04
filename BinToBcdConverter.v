`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:03:13 01/20/2023 
// Design Name: 
// Module Name:    pointinverter 
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
module bin2bcd(
    bin,
     bcd
    );

    //This module is converting the 8 bit binary number to a 12 bit bcd number.
	 //For example if the number 123(1111011) it gives 1(0001)-2(0010)-3(0011).
	 //By this method we can display the number in the 7-segment display.
    input [7:0] bin;
    output [11:0] bcd;
    reg [11 : 0] bcd; 
     reg [3:0] i;   
     
     always @(bin)
        begin
            bcd = 0; 
            for (i = 0; i < 8; i = i+1) 
            begin
                bcd = {bcd[10:0],bin[7-i]};       
                if(i < 7 && bcd[3:0] > 4) 
                    bcd[3:0] = bcd[3:0] + 3;
                if(i < 7 && bcd[7:4] > 4)
                    bcd[7:4] = bcd[7:4] + 3;
                if(i < 7 && bcd[11:8] > 4)
                    bcd[11:8] = bcd[11:8] + 3;  
            end
        end     
                
endmodule
