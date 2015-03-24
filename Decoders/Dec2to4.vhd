library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Dec2to4 is
port(x: in std_logic_vector(1 downto 0);
	y: out std_logic_vector(3 downto 0));
end Dec2to4;

architecture ways of Dec2to4 is
begin
	y(0) <= not x(0) and not x(1);
	Y(1) <= not x(0) and x(1);
	y(2) <= x(0) and not x(1);
	y(3) <= x(0) and x(1);
end ways;