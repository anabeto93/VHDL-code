library ieee;
use ieee.std_logic_1164.all;

entity dflipflop is
port(d,clk: in std_logic;
		q:out std_logic);
end dflipflop;

architecture way of dflipflop is
begin
process is
begin
	wait until clk='1';
		q<=d after 5ns;
end process;
end way;
		