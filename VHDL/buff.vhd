library ieee,CellsLib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use CellsLib.CellsLib_DECL_PACK.all;

entity buff is

    port(
      clk         : in std_logic;
      reset       : in std_logic;
      button_in   : in std_logic;
      button_out  : out std_logic
    );
end buff;

architecture behavioural of buff is
    
signal buf_sig:std_logic;
    
begin
    
L1: dfr11 port map (button_in,reset,clk,buf_sig);
L2: dfr11 port map (buf_sig,reset,clk,button_out);
    
end behavioural;
