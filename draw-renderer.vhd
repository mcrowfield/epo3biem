library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture renderer of draw is
signal addout : unsigned(4 downto 0); 
signal compout, compplus1out, orout, logicout : std_logic;
begin
process(position, addout) is
begin
	if(position = y_input) then
		compout <= '1';
	else 
		compout <= '0';
	end if;

	if(std_logic_vector(addout) = y_input) then
		compplus1out <= '1';
	else
		compplus1out <= '0';
	end if;
end process;

addout <= unsigned(position) + 1;
orout <= compout or compplus1out;
blue_output <= logicout and orout;
logicout <=  (not x_input(3) and not x_input(2) and x_input(1) and not x_input(0)) or ((not x_input(3) and not x_input(2) and not x_input(1) and x_input(0)) and compout);   

end renderer;

