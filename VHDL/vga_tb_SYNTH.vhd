
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of vga_tb is

   component helicopter
      port( clk, reset : in std_logic;  x_input : in std_logic_vector (5 downto
            0);  y_input : in std_logic_vector (4 downto 0);  button, count, 
            enable : in std_logic;  blue : out std_logic);
   end component;
   
   component divider
      port( disp_ena : in std_logic;  row : in std_logic_vector (9 downto 0);  
            column : in std_logic_vector (7 downto 0);  shz, reset, clk : in 
            std_logic;  xv : out std_logic_vector (5 downto 0);  yv : out 
            std_logic_vector (4 downto 0);  tick : out std_logic);
   end component;
   
   component vga_controller
      port( pixel_clk, reset : in std_logic;  h_sync, v_sync, disp_ena : out 
            std_logic;  column : out std_logic_vector (7 downto 0);  row : out 
            std_logic_vector (9 downto 0);  shz : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, disp_ena, shz, x_7_port, x_6_port, 
      x_5_port, x_4_port, x_3_port, x_2_port, x_1_port, x_0_port, y_9_port, 
      y_8_port, y_7_port, y_6_port, y_5_port, y_4_port, y_3_port, y_2_port, 
      y_1_port, y_0_port, xv_5_port, xv_4_port, xv_3_port, xv_2_port, xv_1_port
      , xv_0_port, yv_4_port, yv_3_port, yv_2_port, yv_1_port, yv_0_port, tick,
      n_1000, n_1001, n_1002 : std_logic;

begin
   
   L1 : vga_controller port map( pixel_clk => X_Logic0_port, reset => 
                           X_Logic1_port, h_sync => n_1000, v_sync => n_1001, 
                           disp_ena => disp_ena, column(7) => x_7_port, 
                           column(6) => x_6_port, column(5) => x_5_port, 
                           column(4) => x_4_port, column(3) => x_3_port, 
                           column(2) => x_2_port, column(1) => x_1_port, 
                           column(0) => x_0_port, row(9) => y_9_port, row(8) =>
                           y_8_port, row(7) => y_7_port, row(6) => y_6_port, 
                           row(5) => y_5_port, row(4) => y_4_port, row(3) => 
                           y_3_port, row(2) => y_2_port, row(1) => y_1_port, 
                           row(0) => y_0_port, shz => shz);
   L2 : divider port map( disp_ena => disp_ena, row(9) => y_9_port, row(8) => 
                           y_8_port, row(7) => y_7_port, row(6) => y_6_port, 
                           row(5) => y_5_port, row(4) => y_4_port, row(3) => 
                           y_3_port, row(2) => y_2_port, row(1) => y_1_port, 
                           row(0) => y_0_port, column(7) => x_7_port, column(6)
                           => x_6_port, column(5) => x_5_port, column(4) => 
                           x_4_port, column(3) => x_3_port, column(2) => 
                           x_2_port, column(1) => x_1_port, column(0) => 
                           x_0_port, shz => shz, reset => X_Logic1_port, clk =>
                           X_Logic0_port, xv(5) => xv_5_port, xv(4) => 
                           xv_4_port, xv(3) => xv_3_port, xv(2) => xv_2_port, 
                           xv(1) => xv_1_port, xv(0) => xv_0_port, yv(4) => 
                           yv_4_port, yv(3) => yv_3_port, yv(2) => yv_2_port, 
                           yv(1) => yv_1_port, yv(0) => yv_0_port, tick => tick
                           );
   L3 : helicopter port map( clk => X_Logic0_port, reset => X_Logic1_port, 
                           x_input(5) => xv_5_port, x_input(4) => xv_4_port, 
                           x_input(3) => xv_3_port, x_input(2) => xv_2_port, 
                           x_input(1) => xv_1_port, x_input(0) => xv_0_port, 
                           y_input(4) => yv_4_port, y_input(3) => yv_3_port, 
                           y_input(2) => yv_2_port, y_input(1) => yv_1_port, 
                           y_input(0) => yv_0_port, button => X_Logic0_port, 
                           count => tick, enable => X_Logic1_port, blue => 
                           n_1002);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end synthesised;



