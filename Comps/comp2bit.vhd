library ieee;
use ieee.std_logic_1164.all;

entity comp2bit is
port(a,b: in std_logic_vector(1 downto 0);
	a_e_b,a_l_b,a_g_b: out std_logic);
end comp2bit;

architecture behav of comp2bit is
begin
	a_e_b<= (not a(1) and not a(0) and not b(1) and not b(0)) or (a(1) and a(0) and b(1) and b(0))
			or(not a(1) and a(0) and not b(1) and b(0)) or (a(1) and not a(0) and b(1) and not b(0));
	a_l_b<=(b(0) and not a(1) and not a(0)) or(b(1) and not a(1)) or (not a(0) and b(1) and b(0));
	a_g_b<=(a(0)and not b(1) and not b(0)) or (a(1) and not b(1)) or (not b(0) and a(1) and a(0));
end behav;