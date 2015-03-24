library ieee;
use ieee.std_logic_1164.all;

entity SR_FF is
port(S,R: in std_logic;
	Q,nQ: out std_logic);
end SR_FF;

architecture struct of SR_FF is
signal q1,q2: std_logic;
begin
		Q<= S nor q1;
		nQ<=R nor q2;
end struct;
