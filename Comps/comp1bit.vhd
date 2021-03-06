library ieee;
use ieee.std_logic_1164.all;

entity comp1bit is
port( Gin,Lin,x,y: in std_logic; --x and y are the inputs, G and L are 
	Gout,Eout,Lout:out std_logic);--selectors
end comp1bit;

architecture hmm of comp1bit is
begin
	Gout <= (x and not y) or (x and Gin) or (not y and Gin);
	Eout <= (not x and not y and not Gin and not Lin) or 
			(x and y and not Gin and not Lin);
	Lout <= (not x and y) or (not x and Lin) or (y and Lin);
end hmm;