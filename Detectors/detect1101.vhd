library ieee;
use ieee.std_logic_1164.all;

entity detect1101 is
port(clk,clr,din: in std_logic;
		dout: out std_logic);
end detect1101;

architecture hello of detect1101 is
	type myState is (s0,s1,s2,s3);
	signal currentState,nextState: myState;
begin
	C1: process(clk,clr)
	begin
		if clr='1' then
			currentState <= s0;
		elsif clk'event and clk='1' then
			currentState <= nextState;
		end if;
	end process;
	C2: process(currentState,din)
	begin
		case currentState is
			when s0 =>
				if din='1' then
					nextState<=s1;
				else
					nextState<=s0;
				end if;
			when s1 =>
				if din='1' then
					nextState <=s2;
				else
					nextState <=s0;
				end if;
			when s2 =>
				if din='1' then
					nextState <=s2;
				else
					nextState <=s3;
				end if;
			when s3 =>
				if din='1' then
					nextState <=s1;
				else
					nextState<=s0;
				end if;
			when others =>
				null;
			end case;
	end process;
	C3: process(clk,clr)
	begin
		if clr='1' then
			dout<='0';
		elsif clk'event and clk='1' then
			if currentState=s3 and din='1' then
				dout<='1';
			else
				dout<='0';
			end if;
		end if;
	end process;
end hello;