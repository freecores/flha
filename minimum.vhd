library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity minimum is
    Port ( A : in std_logic_vector(7 downto 0);
           B : in std_logic_vector(7 downto 0);
           C : out std_logic_vector(7 downto 0));
end minimum;

architecture Behavioral of minimum is
begin
	min_process: process(A, B)
	begin
		if (A < B) then
			C <= A;
		else
			C <= B;
		end if;
	end process min_process;
end Behavioral;
