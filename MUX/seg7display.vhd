library ieee;
use ieee.std_logic_1164.all;

entity seg7display is
port(a_g: out std_logic_vector(6 downto 0);
	x: in std_logic_vector(3 downto 0));
end seg7display;

architecture works of seg7display is
begin
	a_g(6) <= (not x(3) and not x(2) and not x(1) and x(0))--a
	or (not x(3) and x(2) and not x(1) and not x(0))
	or (x(3) and x(2) and not x(1) and x(0))
	or (x(3) and not x(2) and x(1) and x(0));
	a_g(5) <= (x(2) and x(1) and not x(0))--b
	or (x(3) and x(1) and x(0))
	or (not x(3) and x(2) and not x(1) and not x(0));
	a_g(4) <= (not x(3) and not x(2) and x(1) and not x(0))--c
	or (x(3) and x(2) and x(1))
	or (x(3) and x(2) and not x(0));
	a_g(3) <= (not x(3) and not x(2) and not x(1) and x(0))--d
	or (not x(3) and x(2) and not x(1) and not x(0))
	or (x(3) and not x(2) and not x(1) and not x(0))
	or (x(2) and x(1) and x(0));
	a_g(2) <= (not x(3) and x(0))
	or (not x(3) and x(2) and not x(1))
	or (not x(2) and not x(1) and x(0));
	a_g(1) <= (not x(3) and not x(2) and x(0))
	or (not x(3) and not x(2) and x(1))
	or (not x(3) and x(1) and x(0))
	or (x(3) and x(2) and not x(1) and x(0));
	a_g(0) <= (not x(3) and not x(2) and not x(1))
	or (x(3) and x(2) and x(1) and not x(0))
	or (not x(3) and x(2) and x(1) and x(0));
end works;