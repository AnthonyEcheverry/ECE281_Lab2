--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:22:28 02/20/2014
-- Design Name:   
-- Module Name:   C:/Users/C15Anthony.Echeverry/Documents/GITBASH1/Prelab_2/ECE281_Lab2/Lab2_testbench.vhd
-- Project Name:  ECE281_Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab_2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Lab2_testbench IS
END Lab2_testbench;
 
ARCHITECTURE behavior OF Lab2_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab_2
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Subtract : IN  std_logic;
         Cout : OUT  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         overflow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';
   signal Subtract : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal Sum : std_logic_vector(3 downto 0);
   signal overflow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab_2 PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Subtract => Subtract,
          Cout => Cout,
          Sum => Sum,
          overflow => overflow
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
	 
	 A<=(3 downto 0 =>'0');
	 B<=(3 downto 0 =>'0');
	 Cin<='0';
	 subtract <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
