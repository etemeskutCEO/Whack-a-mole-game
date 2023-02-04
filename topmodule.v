`timescale 1ns / 1ps

//So in this top module i did the necesarry input-output connections.
//Basically we generate a 4-bit random number then send it to ledrandom module
//so we can light the LEDs randomly. After that,we set our button detectors to 
//prevent any bouncing problem that may take more than 1 input while pressed one time.
//Then we start the count the players score. For example if the 3rd LED is on and the 3rd button is
//pressed player gets a point and if he presses another false button he loses 1 point.
//Then, we convert this 8-bit score to 12-bit bcd number to display it in the 7-segment display.
//For example  if the number 123(1111011) it gives (0001)(0010)(0011) 1-2-3 respectively.
//Then we display the score in the 7-segment. 


module topmodule(kartclk,butout0,butout1,butout2,butout3,but0,but1,but2,but3,rst,load,seed,doutnot,ledclk,clk2,ssout,enout,kartled
    );
	 
	 input kartclk,but0,but1,but2,but3,rst,load;
	 input [3:0] seed;
	 output [3:0] doutnot;
	 output butout0,butout1,butout2,butout3;
	 wire [3:0] outled;
	 output [3:0] kartled;
	 output [6:0] ssout;
	 output [3:0] enout;
	 output ledclk,clk2;
	 wire [7:0] points;
	 wire [8:0] displayednum;
	 
	 clkdivider a0 (ledclk,kartclk);
	 //random number generator
	 lfsr a(outled,kartclk,rst,seed,load,doutnot);
	 //led lighter
	 ledrandom ledder(outled,kartled);
	 
	 //button detectors
	 buttondetector butdet0(but0,kartclk,butout0,rst);
	 buttondetector butdet1(but1,kartclk,butout1,rst);
	 buttondetector butdet2(but2,kartclk,butout2,rst);
	 buttondetector butdet3(but3,kartclk,butout3,rst);
	 
	 //score counter
	 pointcounter counter0(outled,butout0,butout1,butout2,butout3,points);
	 
	 //binary to bcd converter
	 bin2bcd converter(points,displayednum);
	 //7-segment display
	 displayerleds disp1(displayednum,ssout,enout,kartclk,clk2);
	 
endmodule
