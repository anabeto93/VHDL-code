library ieee;
use ieee.std_logic_1164.all;

entity comp2topL is
port(sw: in std_logic_vector(3 downto 0);--sw stands for switches
		ld: out std_logic_vector(2 downto 0)); --ld stands for light emitting diode
end comp2topL;

architecture struct of comp2topL is
component comp2bit is
port(a,b: in std_logic_vector(1 downto 0);
	a_e_b,a_l_b,a_g_b: out std_logic);
end component;
begin
	c1: comp2bit port map(sw(3 downto 2),sw(1 downto 0),ld(0),ld(1),ld(2));
end struct;
	