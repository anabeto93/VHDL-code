library ieee;
use ieee.std_logic_1164.all;

entity halfAdder is
port( x,y: in std_logic;
	sum,carry: out std_logic);
end halfAdder;

architecture how of halfAdder is
begin
	sum<= x xor y;
	carry<= x and y;
end how;
