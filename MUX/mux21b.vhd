library ieee;
use ieee.std_logic_1164.all;

entity mux21b is
port( a,b,sel: in std_logic;
	y: out std_logic);
end mux21b;

architecture mux of mux21b is
begin
	process(a,b,sel)
	begin
		if sel='0' then y<=a;
		else y<=b;
		end if;
	end process;
end mux;
