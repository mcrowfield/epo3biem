library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture renderer of draw is
signal addoutone, addouttwo, addoutthree : unsigned(4 downto 0); 
signal k, l, m, n, logickout, logiclout, logicmout, logicnout : std_logic;
begin
process(position, addoutone, addouttwo, addoutthree) is
begin
	if(position = y_input) then
		k <= '1';
	else 
		k <= '0';
	end if;

	if(std_logic_vector(addoutone) = y_input) then
		l <= '1';
	else
		l <= '0';
	end if;
		
	if(std_logic_vector(addouttwo) = y_input) then
		m <= '1';
	else
		m <= '0';
	end if;
		
	if(std_logic_vector(addoutthree) = y_input) then
		n <= '1';
	else
		n <= '0';
	end if;
end process;
		
addoutone <= unsigned(position) + 1;
addouttwo <= unsigned(position) +2;
addoutthree <= unsigned(position) +3;		
	
logickout <= (k and (x_input(1) and x_input(0))) or (k and x_input(2));
logiclout <= (l and not x_input(1) and x_input(2) and x_input(0)) or (l and not x_input(1) and not x_input(2) and not x_input(0));
logicmout <= m;
Logicnout <= (n and x_input(2));

blue_output <= (logickout or logiclout or logicmout or logicnout) and (not x_input(5) and not x_input(4) and x_input(3));
end renderer;

