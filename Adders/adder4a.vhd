library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity adder4a is
port(a,b: in std_logic_vector(3 downto 0);
	sum: out std_logic_vector(3 downto 0);
	carry: out std_logic);
end adder4a;

architecture behav of adder4a is
component fullAdder1 is
port( a,b,c: in std_logic;
	sum,carry: out std_logic);
end component;
signal c1: std_logic_vector(4 downto 0);
begin
	--process(a,b)
	--begin
		c1(0)<='0';
		a1: fullAdder1 port map (a(0),b(0),c1(0),sum(0),c1(1));
		a2: fullAdder1 port map (a(1),b(1),c1(1),sum(1),c1(2));
		a3: fullAdder1 port map (a(2),b(2),c1(2),sum(2),c1(3));
		a4: fullAdder1 port map (a(3),b(3),c1(3),sum(3),c1(4));
		carry<=c1(4);
	--end process;
end behav;
		