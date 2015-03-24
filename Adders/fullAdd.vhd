library ieee;
use ieee.std_logic_1164.all;

entity fullAdd is 
port(x,y,c: in std_logic;
	sum,carry: out std_logic);
end fullAdd;

architecture fullAdd of fullAdd is
signal int1,int2,int3: std_logic;
begin
	int1 <= x xor y;
	int2 <= x and y;
	int3 <= c and int1;
	sum <= int1 xor c;
	carry <= int3 or int2;
end architecture fullAdd;
