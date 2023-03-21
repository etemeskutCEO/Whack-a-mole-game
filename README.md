# Whack-a-mole-game
Designed a whack-a-mole game in verilog HDL using BASYS 2 

So in this project we wanted to make a whack-a-mole game. We had to randomly light LEDs and press the buttons to get score points. For example, when 2nd LED is on if player presses 2nd button he will take score point and otherwise he will lose one point.

In order to do this, first i made a random number generator that will create a 4-bit random number. Then we light LEDs according to this number. For example, if the random number is 1011, first, second and fourth LEDs will light. After that, I designed a button detector to prevent any bouncing problems. Because when the player presses the button it bounces and gives more than 1 input. This button detectors will prevent that. Then, I designed a score counter that will give 8-bit as an output score and add 1 or substract 1 from it. After that, I created a binary to bcd converter that will take this 8-bit score and convert it to 12-bit bcd number. For example  if the number 123(1111011) it gives (0001)(0010)(0011) which is equal to 1-2-3 respectively. Then I desing a 7-segment displayer that will display this 12-bit number.


I didn't explicitly explain in here but there is comment lines in every file that you can look. Also I didn't upload the whole project folder because there were some bmm,prj,stx and test files that I found unnecessary to share in here. So I only uploaded code files.
