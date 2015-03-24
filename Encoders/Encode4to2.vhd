library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Encode4to2 is
port(x: in std_logic_vector(3 downto 0);
	y: out std_logic_vector(1 downto 0));
end Encode4to2;

architecture encoder of Encode4to2 is
begin
	y(0) <= (not x(0) and x(1) and not x(2) and not x(3)) 
		or (x(3) and not x(2) and not x(1) and x(0));
	y(1) <= (x(2) and not x(3) and not x(1) and not x(0))
		or (x(3) and not x(2) and not x(1) and x(0));
end encoder;