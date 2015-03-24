library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Enc4to2a is
port(x: in std_logic_vector(7 downto 0);
	y: out std_logic_vector(2 downto 0);
	valid: out std_logic);
end Enc4to2a;

architecture encoder of Enc4to2a is
begin
	process (x)
	variable valid_var: std_logic;
	begin
		y(1) <= x(2) or x(3);
		y(0) <= x(1) or x(3);
		valid_var:='0';
		for i in 3 downto 0 loop
			valid_var:= valid_var or x(i);
		end loop;
		valid <= valid_var;
	end process;
end encoder;