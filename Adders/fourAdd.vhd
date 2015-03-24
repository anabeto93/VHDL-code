library ieee;
use ieee.std_logic_1164.all;

entity fourAdd is
port(x,y: in std_logic_vector(3 downto 0);
	sum: out std_logic_vector(3 downto 0);
	carry: out std_logic);
end fourAdd;

architecture fourAdd of fourAdd is
signal c0,c1,c2,c3,c4: std_logic;
component fullAdd is 
port(x,y,c: in std_logic;
	sum,carry: out std_logic);
end component;

begin
		c0 <= '0'; 
		hey: fullAdd port map(x(0),y(0),c0,sum(0),c1);
		you: fullAdd port map(x(1),y(1),c1,sum(1),c2);
		are: fullAdd port map(x(2),y(2),c2,sum(2),c3);
		good: fullAdd port map(x(3),y(2),c3,sum(3),carry);
end architecture fourAdd;

		
	