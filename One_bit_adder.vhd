----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Anthony Echeverry
-- 
-- Create Date:    17:34:21 02/10/2014 
-- Design Name: 
-- Module Name:    One_bit_adder - Behavioral 
-- Project Name: Prelab 2
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity One_bit_adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end One_bit_adder;

architecture Behavioral of One_bit_adder is

signal A_not, B_not, Cin_not, D, E, F, G, H, I, J: std_logic;

begin


A_not <= not A;
B_not <= not B;
Cin_not <= not Cin;


G <= Cin and A_not and B_not;
D <= Cin_not and A_not and B;
E <= Cin_not and A and B_not;
F <= Cin and A and B;


H <= Cin and A_not and B;
I <= Cin and A and B_not;
J <= A and B;

S <= D or E or G or F;
Cout <= H or J or I;

end Behavioral;

