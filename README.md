ECE281_Lab2
===========

#Prelab

| Cin | A | B | Cout | S |
| --- |---|---| ---- |---|
|  0  | 0 | 0 |  0   | 0 |
|  0  | 0 | 1 |  0   | 1 |
|  0  | 1 | 0 |  0   | 1 |
|  0  | 1 | 1 |  1   | 0 |
|  1  | 0 | 0 |  0   | 1 |
|  1  | 0 | 1 |  1   | 0 |
|  1  | 1 | 0 |  1   | 0 |
|  1  | 1 | 1 |  1   | 1 |

![Picture_1][picture_1] 

#One bit Schematic

[picture_1]: https://raw2.github.com/AnthonyEcheverry/ECE281_Lab2/master/IMG_12061.jpg "Schematic"

#One bit Testbench

![Pic2][pic2]

[pic2]: https://raw2.github.com/AnthonyEcheverry/ECE281_Lab2/master/ISIM_Adder.PNG 

#Pre-Lab Analysis

I can not get this to work on my nexys chip no matter what I have tried.  Although I know my code was right and it was correct in the testbench, I could not get it to correctly load for the functionality test. I was running into all the problems when I tried to implement my design after creating the ucf file.  After working on it for hours and changing my code multiple times, I decided to quit. I learned that next time I should go into EI to figure out what the heck is going on.


#The Lab
![pic3][pic3]

[pic3]: https://raw2.github.com/AnthonyEcheverry/ECE281_Lab2/master/4_bit_adder.jpg

#Test Bench

The test bench for this lab was one of the last things I worked on. I realize this was a very bad idea only after it was too late.  I should have gone straight to the testbench after my .vhd code was completed.  Instead, I got overzealous and skipped straight to the .ucf file to try and get the functionality done.  It is because of this that I really failed to implement my design into the nexys.

#Design and Attempted Debugging

This project was an absolute nightmare for me when it came to debugging.  I ONLY uploaded my final .vhd file that I put the most work into, but started with many other files that did not end up working and got too complicated for me to try and fix. Instead I started over with a new file, which still didn't work in the end.  When I talked to Dr. Kneeble, he said that I was not correctly instantiating my bit files that I call in the component portion of the code.  I went back to my room to try and figure out what to fix but I could not figure it out.  

The purpose of this project was to create a 4 bit adder which could subtract (by using 2's comp), implement a carry, and tell the user when overflow is generated.  Sounds simple enough, but a lot of tiny errors in my code kept me from being able to complete it.  In the future I realize that I will need to start A LOT sooner than I previously did and go in for EI more often.  
