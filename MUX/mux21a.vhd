library ieee;
use ieee.std_logic_1164.all;

entity mux21a is
port(a,b,sel:in std_logic;
	y: out std_logic);
end mux21a;

architecture struct of mux21a is
begin
	y<= (not sel and a) or (sel and b);
end struct;