library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX3 is
    Port ( A : in std_logic_vector(63 downto 0);
           B : in std_logic_vector(63 downto 0);
           Sel : in std_logic;
           Count : in std_logic_vector(2 downto 0);
           C : out std_logic_vector(63 downto 0));
end MUX3;

architecture mux3_structure of MUX3 is
begin
	mux3_process: process(A, B, Sel, Count)
	begin
		if(Sel = '1') then
			if(Count = "000") then
				C <= (others=>'0');
			else
				C <= B;
			end if;
		else
			C <= A;
		end if;
	end process mux3_process;
end mux3_structure;
