library ieee;
use ieee.std_logic_1164.all;

entity dflipflop is 
port(clk,D: in std_logic;
	Q,nQ: out std_logic);
end dflipflop;

architecture struct of dflipflop is
signal f1,f2,f3,f4,f5,f6: std_logic;
begin
	f1<=f4 nand f2;
	f2<=f1 nand f5;
	f3<=f4 nand f6;
	f4<=f3 nand clk;
	f5<=f6 nand clk nand f4;
	f6<=f5 nand D;
	Q<=f1;
	nQ<=f2;
end struct;