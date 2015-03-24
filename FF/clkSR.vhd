library ieee;
use ieee.std_logic_1164.all;

entity clkSR is
port(R,S,clk: in std_logic;
		Q,nQ: out std_logic);
end clkSR;

architecture struct of clkSR is
signal s1,s2,q1,q2: std_logic;
begin
		s1 <= S nand clk;
		s2 <= R nand clk;
		q1 <= s1 nand q2;
		q2 <= s2 nand q1;
		Q <= q1; nQ <= q2;
end struct;
		
		