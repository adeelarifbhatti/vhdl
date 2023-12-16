----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:13:26 12/16/2023 
-- Design Name: 
-- Module Name:    with_select - Behavioral 
-- Project Name: 
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

entity with_select is
	port(
		A : in std_logic;
		B : in std_logic;
		C : in std_logic;
		D : in std_logic;
		control : in std_logic_vector(1 downto 0);
		Z : out std_logic
	);
end with_select;

architecture Behavioral of with_select is
	signal control_signal : std_logic_vector(1 downto 0);
begin
control_signal <= control;
	with control_signal select
		Z <= A when "00",
			  B when "01",
		     C when "10",
		     D when "11",
		    '0' when others;

end Behavioral;

