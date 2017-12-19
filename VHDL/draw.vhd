library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity draw is 
    port
      (
      x_input : in std_logic_vector (6 downto 0);
      y_input : in std_logic_vector (5 downto 0);
      position : in std_logic_vector (5 downto 0);
      blue_output : out std_logic
      );
end draw; 



