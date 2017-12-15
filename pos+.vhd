.library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity posnew is
    port
      (
      position_old : in std_logic_vector (4 downto 0);
      button       : in std_logic;
      position_new : out std_logic_vector (4 downto 0)
      );
end posnew;
architecture nextcopter of posnew is
    signal newposition : unsigned (4 downto 0);
begin
  process(position_old, button) is

    begin
      if (button = '1') then
        newposition <= unsigned(position_old) - 2;
      else
        newposition <= unsigned(position_old) + 3;
      end if;
  end process;
position_new <= std_logic_vector(newposition);
end nextcopter;
