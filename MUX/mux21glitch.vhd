library ieee;
use ieee.std_logic_1164.all;

entity mux21glitch is
port( a,b,sel: in std_logic;
	y: out std_logic);
end mux21glitch;

architecture mux of mux21glitch is
signal p,q,nots: std_logic;
begin
	nots<= not sel after 10ns;
	p<= a and nots after 10ns;
	q<= b and sel after 10ns;
	y<= p or q after 10ns;
end mux;
