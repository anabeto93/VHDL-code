library ieee;
use ieee.std_logic_1164.all;

entity SRFF is
port(S,R: in std_logic;
	Q,nQ: out std_logic);
end SRFF;

architecture struct of SRFF is
signal q1,q2: std_logic;
begin
		Q<= S nor q1;
		nQ<=R nor q2;
end struct;
