library ieee;
use ieee.std_logic_1164.all;

entity mux21ng is
port(a,b,s: in std_logic;
		y: out std_logic);
end mux21ng;

architecture noglitch of mux21ng is
begin
	y<=(s and b) or (a and b) or (not s and a);
end noglitch;
