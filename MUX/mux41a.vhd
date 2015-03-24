library ieee;
use ieee.std_logic_1164.all;

entity mux41a is 
port(c: in std_logic_vector(3 downto 0);
		sel: in std_logic_vector(1 downto 0);
		y: out std_logic);
end mux41a;

architecture behav of mux41a is
component mux21b is
port( a,b,sel: in std_logic;
	y: out std_logic);
end component;
signal v,w: std_logic;
begin
	c0: mux21b port map (c(0),c(1),sel(0),v);
	c1: mux21b port map (c(2),c(3),sel(0),w);
	c3: mux21b port map (v,w,sel(1),y);
end behav;
