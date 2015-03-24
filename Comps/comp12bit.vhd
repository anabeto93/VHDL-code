library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity comp12bit is 
port ( x,y: in std_logic_vector(11 downto 0);
		gt,eq,lt: out std_logic);
end comp12bit;

architecture works of comp12bit is
begin
	process(x,y)
	begin
		gt <= '0';
		eq <= '0';
		lt <= '0';
		if(x>y) then
			gt <= '1';
		elsif (x=y) then
			eq <= '1';
		elsif (x<y) then
			lt <= '1';
		end if;
	end process;
end works;