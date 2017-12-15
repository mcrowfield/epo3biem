
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
   
   signal position_old_5_port, position_old_4_port, position_old_3_port, 
      position_old_2_port, position_old_1_port, position_old_0_port, 
      state_1_port, state_0_port, next_state_1_port, next_state_0_port, n19, 
      n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34
      , n35, n36, n37, n38, n39, n40, n41, n42 : std_logic;

begin
   position_old <= ( position_old_5_port, position_old_4_port, 
      position_old_3_port, position_old_2_port, position_old_1_port, 
      position_old_0_port );
   
   state_reg_0_inst : dfr11 port map( D => next_state_0_port, R => enable, CK 
                           => clk, Q => state_0_port);
   state_reg_1_inst : dfr11 port map( D => next_state_1_port, R => enable, CK 
                           => clk, Q => state_1_port);
   position_old_reg_4_inst : dfn10 port map( D => n20, CK => clk, Q => 
                           position_old_4_port);
   position_old_reg_3_inst : dfn10 port map( D => n21, CK => clk, Q => 
                           position_old_3_port);
   position_old_reg_2_inst : dfn10 port map( D => n22, CK => clk, Q => 
                           position_old_2_port);
   position_old_reg_1_inst : dfn10 port map( D => n23, CK => clk, Q => 
                           position_old_1_port);
   position_old_reg_0_inst : dfn10 port map( D => n24, CK => clk, Q => 
                           position_old_0_port);
   position_old_reg_5_inst : dfn10 port map( D => n19, CK => clk, Q => 
                           position_old_5_port);
   U29 : iv110 port map( A => n25, Y => next_state_1_port);
   U30 : na310 port map( A => state_0_port, B => n26, C => count, Y => n25);
   U31 : na210 port map( A => state_0_port, B => n27, Y => next_state_0_port);
   U32 : na210 port map( A => n28, B => n26, Y => n27);
   U33 : iv110 port map( A => count, Y => n28);
   U34 : na210 port map( A => n29, B => n30, Y => n24);
   U35 : na210 port map( A => position_new(0), B => n31, Y => n30);
   U36 : na210 port map( A => position_old_0_port, B => state_0_port, Y => n29)
                           ;
   U37 : na210 port map( A => n32, B => n33, Y => n23);
   U38 : na210 port map( A => position_new(1), B => n31, Y => n33);
   U39 : na210 port map( A => position_old_1_port, B => state_0_port, Y => n32)
                           ;
   U40 : na210 port map( A => n34, B => n35, Y => n22);
   U41 : na210 port map( A => position_new(2), B => n31, Y => n35);
   U42 : na210 port map( A => position_old_2_port, B => state_0_port, Y => n34)
                           ;
   U43 : na210 port map( A => n36, B => n37, Y => n21);
   U44 : na210 port map( A => position_new(3), B => n31, Y => n37);
   U45 : na210 port map( A => position_old_3_port, B => state_0_port, Y => n36)
                           ;
   U46 : na210 port map( A => n38, B => n39, Y => n20);
   U47 : na210 port map( A => position_new(4), B => n31, Y => n39);
   U48 : na210 port map( A => position_old_4_port, B => state_0_port, Y => n38)
                           ;
   U49 : na210 port map( A => n40, B => n41, Y => n19);
   U50 : na210 port map( A => position_new(5), B => n31, Y => n41);
   U51 : no210 port map( A => n26, B => state_0_port, Y => n31);
   U52 : iv110 port map( A => state_1_port, Y => n26);
   U53 : mu111 port map( A => state_1_port, B => n42, S => state_0_port, Y => 
                           n40);
   U54 : iv110 port map( A => position_old_5_port, Y => n42);

end synthesised;



