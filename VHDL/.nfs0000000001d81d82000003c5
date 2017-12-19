
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of pos is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component dfn10
      port( D, CK : in std_logic;  Q : out std_logic);
   end component;
   
   component dfr11
      port( D, R, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal position_old_4_port, position_old_3_port, position_old_2_port, 
      position_old_1_port, position_old_0_port, state_1_port, state_0_port, 
      next_state_1_port, next_state_0_port, n17, n18, n19, n20, n21, n22, n23, 
      n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37 : 
      std_logic;

begin
   position_old <= ( position_old_4_port, position_old_3_port, 
      position_old_2_port, position_old_1_port, position_old_0_port );
   
   state_reg_0_inst : dfr11 port map( D => next_state_0_port, R => enable, CK 
                           => clk, Q => state_0_port);
   state_reg_1_inst : dfr11 port map( D => next_state_1_port, R => enable, CK 
                           => clk, Q => state_1_port);
   position_old_reg_3_inst : dfn10 port map( D => n18, CK => clk, Q => 
                           position_old_3_port);
   position_old_reg_2_inst : dfn10 port map( D => n19, CK => clk, Q => 
                           position_old_2_port);
   position_old_reg_1_inst : dfn10 port map( D => n20, CK => clk, Q => 
                           position_old_1_port);
   position_old_reg_0_inst : dfn10 port map( D => n21, CK => clk, Q => 
                           position_old_0_port);
   position_old_reg_4_inst : dfn10 port map( D => n17, CK => clk, Q => 
                           position_old_4_port);
   U26 : iv110 port map( A => n22, Y => next_state_1_port);
   U27 : na310 port map( A => state_0_port, B => n23, C => count, Y => n22);
   U28 : na210 port map( A => state_0_port, B => n24, Y => next_state_0_port);
   U29 : na210 port map( A => n25, B => n23, Y => n24);
   U30 : iv110 port map( A => count, Y => n25);
   U31 : na210 port map( A => n26, B => n27, Y => n21);
   U32 : na210 port map( A => position_new(0), B => n28, Y => n27);
   U33 : na210 port map( A => position_old_0_port, B => state_0_port, Y => n26)
                           ;
   U34 : na210 port map( A => n29, B => n30, Y => n20);
   U35 : na210 port map( A => position_new(1), B => n28, Y => n30);
   U36 : na210 port map( A => position_old_1_port, B => state_0_port, Y => n29)
                           ;
   U37 : na210 port map( A => n31, B => n32, Y => n19);
   U38 : na210 port map( A => position_new(2), B => n28, Y => n32);
   U39 : na210 port map( A => position_old_2_port, B => state_0_port, Y => n31)
                           ;
   U40 : na210 port map( A => n33, B => n34, Y => n18);
   U41 : na210 port map( A => position_new(3), B => n28, Y => n34);
   U42 : na210 port map( A => position_old_3_port, B => state_0_port, Y => n33)
                           ;
   U43 : na210 port map( A => n35, B => n36, Y => n17);
   U44 : na210 port map( A => position_new(4), B => n28, Y => n36);
   U45 : no210 port map( A => n23, B => state_0_port, Y => n28);
   U46 : iv110 port map( A => state_1_port, Y => n23);
   U47 : mu111 port map( A => state_1_port, B => n37, S => state_0_port, Y => 
                           n35);
   U48 : iv110 port map( A => position_old_4_port, Y => n37);

end synthesised;



