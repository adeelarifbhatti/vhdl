--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:55:45 12/16/2023
-- Design Name:   
-- Module Name:   /home/adeel/Desktop/git/vhdl/when_else/when_else_tb.vhd
-- Project Name:  when_else
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: when_else
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
 
ENTITY when_else_tb IS
END when_else_tb;
 
ARCHITECTURE behavior OF when_else_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT when_else
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         assign_A : IN  std_logic;
         assign_B : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal assign_A : std_logic := '0';
   signal assign_B : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: when_else PORT MAP (
          A => A,
          B => B,
          C => C,
          assign_A => assign_A,
          assign_B => assign_B,
          Z => Z
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 
		A <= '1';
		B <= '1';
		C <= '1';
		assign_A <= '0';
		assign_B <= '1';
		wait for 200 ns;
		assign_A <= '1';
		assign_B <= '0';
		wait for 200 ns;
		assign_A <= '0';
		assign_B <= '1';

      wait;
   end process;

END;
