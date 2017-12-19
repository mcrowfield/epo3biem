
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of helicopter is

   component draw
      port( x_input : in std_logic_vector (6 downto 0);  y_input, position : in
            std_logic_vector (5 downto 0);  blue_output : out std_logic);
   end component;
   
   component pos
      port( clk, reset, enable, count : in std_logic;  position_new : in 
            std_logic_vector (5 downto 0);  position_old : out std_logic_vector
            (5 downto 0));
   end component;
   
   component posnew
      port( position_old : in std_logic_vector (5 downto 0);  button : in 
            std_logic;  position_new : out std_logic_vector (5 downto 0));
   end component;
   
   signal position_old_5_port, position_old_4_port, position_old_3_port, 
      position_old_2_port, position_old_1_port, position_old_0_port, 
      position_new_5_port, position_new_4_port, position_new_3_port, 
      position_new_2_port, position_new_1_port, position_new_0_port : std_logic
      ;

begin
   
   lbl0 : posnew port map( position_old(5) => position_old_5_port, 
                           position_old(4) => position_old_4_port, 
                           position_old(3) => position_old_3_port, 
                           position_old(2) => position_old_2_port, 
                           position_old(1) => position_old_1_port, 
                           position_old(0) => position_old_0_port, button => 
                           button, position_new(5) => position_new_5_port, 
                           position_new(4) => position_new_4_port, 
                           position_new(3) => position_new_3_port, 
                           position_new(2) => position_new_2_port, 
                           position_new(1) => position_new_1_port, 
                           position_new(0) => position_new_0_port);
   lbl1 : pos port map( clk => clk, reset => reset, enable => enable, count => 
                           count, position_new(5) => position_new_5_port, 
                           position_new(4) => position_new_4_port, 
                           position_new(3) => position_new_3_port, 
                           position_new(2) => position_new_2_port, 
                           position_new(1) => position_new_1_port, 
                           position_new(0) => position_new_0_port, 
                           position_old(5) => position_old_5_port, 
                           position_old(4) => position_old_4_port, 
                           position_old(3) => position_old_3_port, 
                           position_old(2) => position_old_2_port, 
                           position_old(1) => position_old_1_port, 
                           position_old(0) => position_old_0_port);
   lbl2 : draw port map( x_input(6) => x_input(6), x_input(5) => x_input(5), 
                           x_input(4) => x_input(4), x_input(3) => x_input(3), 
                           x_input(2) => x_input(2), x_input(1) => x_input(1), 
                           x_input(0) => x_input(0), y_input(5) => y_input(5), 
                           y_input(4) => y_input(4), y_input(3) => y_input(3), 
                           y_input(2) => y_input(2), y_input(1) => y_input(1), 
                           y_input(0) => y_input(0), position(5) => 
                           position_old_5_port, position(4) => 
                           position_old_4_port, position(3) => 
                           position_old_3_port, position(2) => 
                           position_old_2_port, position(1) => 
                           position_old_1_port, position(0) => 
                           position_old_0_port, blue_output => blue);

end synthesised;



