library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity comp4bit is
	port(
		x,y: in std_logic_vector(3 downto 0);
		gt,eq,lt: out std_logic);
end comp4bit;

architecture comp4 of comp4bit is 
	procedure comp1bit(
		x,y,Gin,Lin: in std_logic; --x and y are the inputs, G and L are 
		Gout,Lout,Eout:out std_logic)--selectors)
		is begin
			Gout := (x and not y) or (x and Gin) or (not y and Gin);
			Eout := (not x and not y and not Gin and not Lin) or 
				(x and y and not Gin and not Lin);
			Lout := (not x and y) or (not x and Lin) or (y and Lin);
	end procedure;
begin
	process(x,y)
	variable G,L,E: std_logic_vector(4 downto 0);--5 bit
	begin
		G(0):='0';
		L(0):='0';
		for i in 0 to 3 loop
			comp1bit(x(i),y(i),G(i),L(i),G(i+1),L(i+1),E(i+1));
		end loop;
		gt <= G(4);
		eq <= E(4);
		lt <= L(4);
	end process;
end comp4;