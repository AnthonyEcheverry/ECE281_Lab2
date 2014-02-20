----------------------------------------------------------------------------------
-- Company: USAFA ECE281
-- Engineer: Anthony Echeverry
-- 
-- Create Date:    15:19:17 02/17/2014 
-- Design Name: 
-- Module Name:    Full_Adder - structural 
-- Project Name: 4 bit adder
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab_2 is
    Port ( A : in  STD_LOGIC_vector (3 downto 0);
           B : in  STD_LOGIC_vector (3 downto 0);
			  Cin: in Std_logic;
			  Subtract: in std_logic;
			  Cout: out Std_logic;
           Sum : out  STD_LOGIC_vector (3 downto 0);
			  overflow: out std_logic
			  );
			  
end Lab_2;

architecture structural of Lab_2 is

component Full_Adder is

port( A: in std_logic;
		B: in std_logic ;
		Cin: in std_logic ;
		Cout: out std_logic ;
		Sum: out std_logic);
		
end component Full_Adder;

		signal C_alt: std_logic_vector (3 downto 0);
		signal B_alt: std_logic_vector (3 downto 0);
		
	begin
	
		B_alt(0) <=Not B(0) when subtract = '1' else B(0);
		
		B_alt(1) <=Not B(1) when subtract = '1' else B(1);
		
		B_alt(2) <=Not B(2) when subtract = '1' else B(2);
		
		B_alt(3) <=Not B(3) when subtract = '1' else B(3);
		


		Bit0: component Full_Adder
			port map(A => A(0),
					  B => B(0),
					  Cin => subtract,
					  Sum => Sum(0),
					  Cout =>C_alt(0)
					  );
					  
		Bit1: component Full_Adder
			port map(A => A(1),
					  B => B_alt(1),
					  Cin => C_alt(0),
					  Sum => Sum(1),
					  Cout =>C_alt(1)
					  );
					  
		Bit2: component Full_Adder
			port map(A => A(2),
					  B => B_alt(2),
					  Cin => C_alt(1),
					  Sum => Sum(2),
					  Cout =>C_alt(2)
					  );		 
					 
		Bit3: component Full_Adder
			port map(A => A(3),
					  B => B_alt(3),
					  Cin => C_alt(2),
					  Sum => Sum(3),
					  Cout =>C_alt(3)
					  );
					  
					  Cout<=C_alt(3);
					  Overflow<=C_alt(3) xor C_alt(2);

end structural;

