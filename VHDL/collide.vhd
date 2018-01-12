library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity collide is

    port(
      blue_in   : in std_logic;
      red_in    : in std_logic;
      blue_out  : out std_logic;
      red_out   : out std_logic;
      collision : out std_logic
    );
end collide;

architecture behavioural of collide is
    
begin
    
    collision   <= blue_in AND red_in;
    blue_out    <= blue_in;
    red_out     <= red_in;
    
end behavioural;
