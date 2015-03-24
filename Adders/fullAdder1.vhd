library ieee;
use ieee.std_logic_1164.all;

entity fullAdder1 is
port( a,b,c: in std_logic;
	sum,carry: out std_logic);
end fullAdder1;

architecture how of fullAdder1 is
component halfAdder is
port( x,y: in std_logic;
	sum,carry: out std_logic);
end component;
signal int1,int2,int3: std_logic;
begin
	first: halfAdder port map (a,b,int1,int2);
	second: halfAdder port map (c,int1,sum,int3);
	carry<= int2 or int3;
end how;
