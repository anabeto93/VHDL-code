library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity count4bit is
port(clk: in std_logic;
	output: out std_logic_vector(3 downto 0));
end count4bit; 

architecture count4bit of count4bit is
signal previous: std_logic_vector(3 downto 0):=X"0";
begin
	process (clk)
	begin
			if(clk'event and clk='1') then
				previous <= previous +1;
			end if;
	end process;
	output <= previous;
end architecture count4bit;
				
	