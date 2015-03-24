library ieee;
use ieee.std_logic_1164.all;

entity seq1101 is
port (x: in std_logic;
	clk,clr: in std_logic;
	y: out std_logic);
end seq1101;

architecture behav of seq1101 is
type myState is (s0,s1,s2,s3,s4);
signal currentState,nextState : myState;
begin
	C1: process(clk,clr)
	begin
		if clr='1' then
			currentState<=s0;
		elsif clk'event and clk='1' then
			currentState<=nextState;
		end if;
	end process;
	C2: process(x,currentState)
	begin
		case currentState is
			when s0 =>
				if x='1' then
					nextState <=s1;
				elsif x='0' then
					nextState <=s0;
				end if;
			when s1 =>
				if x='1' then
					nextState <= s2;
				elsif x='0' then
					nextState <= s0;
				end if;
			when s2 =>
				if x='1' then
					nextState <= s2;
				elsif x='0' then
					nextState <=s3;
				end if;
			when s3 =>
				if x='1' then
					nextState <= s4;
				elsif x='0' then
					nextState <=s0;
				end if;
			when s4 =>
				if x='1' then
					nextState <= s2;
				else
					nextState <=s0;
				end if;
			when others =>
				null;
			end case;
		end process;
	C3: process(currentState)
	begin
		if currentState=s4 then
			y <= '1';
		else 
			y <= '0';
		end if;
	end process;
end behav;