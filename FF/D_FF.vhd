library ieee;
use ieee.std_logic_1164.all;

entity D_FF is
port(D: in std_logic;
		Q,nQ: out std_logic);
end D_FF;

architecture behav of D_FF is
component clkSR is
port(R,S,clk: in std_logic;
		Q,nQ: out std_logic);
end component;
begin
	
	d1: clkSR port map (S=>D, R=>not D,Q=>Q,nQ=>nQ,clk=>'1');
end behav;