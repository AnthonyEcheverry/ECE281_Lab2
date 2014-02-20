--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer:Anthony Echeverry
--
-- Create Date:   18:09:15 02/10/2014
-- Design Name:   
-- Module Name:   C:/Users/C15Anthony.Echeverry/Documents/GITBASH1/Prelab_2/ECE281_Prelab2/One_bit_adder_testbench.vhd
-- Project Name:  ECE281_Prelab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: One_bit_adder
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
 

 
ENTITY One_bit_adder_testbench IS
END One_bit_adder_testbench;
 
ARCHITECTURE behavior OF One_bit_adder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT One_bit_adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         S : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: One_bit_adder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

   -- Clock process definitions
--   <clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      A<= '0';
		B<= '0';
		Cin<= '0';
      wait for 100 ns;	
		
		A<= '0';
		B<= '0';
		Cin<= '1';
      wait for 100 ns;	
		
		A<= '0';
		B<= '1';
		Cin<= '0';
      wait for 100 ns;	
		
		A<= '0';
		B<= '1';
		Cin<= '1';
      wait for 100 ns;	
		
		A<= '1';
		B<= '0';
		Cin<= '0';
      wait for 100 ns;	
		
		A<= '1';
		B<= '0';
		Cin<= '1';
      wait for 100 ns;	
		
		A<= '1';
		B<= '1';
		Cin<= '0';
      wait for 100 ns;	
		
		A<= '1';
		B<= '1';
		Cin<= '1';
      wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
