
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
      state_1_port, state_0_port, next_state_1_port, next_state_0_port, n3, n20
      , n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, 
      n35, n36, n37, n38, n39, n40, n41, n42, n43 : std_logic;

begin
   position_old <= ( position_old_5_port, position_old_4_port, 
      position_old_3_port, position_old_2_port, position_old_1_port, 
      position_old_0_port );
   
   state_reg_0_inst : dfr11 port map( D => next_state_0_port, R => n3, CK => 
                           clk, Q => state_0_port);
   state_reg_1_inst : dfr11 port map( D => next_state_1_port, R => n3, CK => 
                           clk, Q => state_1_port);
   position_old_reg_4_inst : dfn10 port map( D => n21, CK => clk, Q => 
                           position_old_4_port);
   position_old_reg_3_inst : dfn10 port map( D => n22, CK => clk, Q => 
                           position_old_3_port);
   position_old_reg_2_inst : dfn10 port map( D => n23, CK => clk, Q => 
                           position_old_2_port);
   position_old_reg_1_inst : dfn10 port map( D => n24, CK => clk, Q => 
                           position_old_1_port);
   position_old_reg_0_inst : dfn10 port map( D => n25, CK => clk, Q => 
                           position_old_0_port);
   position_old_reg_5_inst : dfn10 port map( D => n20, CK => clk, Q => 
                           position_old_5_port);
   U30 : iv110 port map( A => n26, Y => next_state_1_port);
   U31 : na310 port map( A => state_0_port, B => n27, C => count, Y => n26);
   U32 : na210 port map( A => state_0_port, B => n28, Y => next_state_0_port);
   U33 : na210 port map( A => n29, B => n27, Y => n28);
   U34 : iv110 port map( A => count, Y => n29);
   U35 : iv110 port map( A => enable, Y => n3);
   U36 : na210 port map( A => n30, B => n31, Y => n25);
   U37 : na210 port map( A => position_new(0), B => n32, Y => n31);
   U38 : na210 port map( A => position_old_0_port, B => state_0_port, Y => n30)
                           ;
   U39 : na210 port map( A => n33, B => n34, Y => n24);
   U40 : na210 port map( A => position_new(1), B => n32, Y => n34);
   U41 : na210 port map( A => position_old_1_port, B => state_0_port, Y => n33)
                           ;
   U42 : na210 port map( A => n35, B => n36, Y => n23);
   U43 : na210 port map( A => position_new(2), B => n32, Y => n36);
   U44 : na210 port map( A => position_old_2_port, B => state_0_port, Y => n35)
                           ;
   U45 : na210 port map( A => n37, B => n38, Y => n22);
   U46 : na210 port map( A => position_new(3), B => n32, Y => n38);
   U47 : na210 port map( A => position_old_3_port, B => state_0_port, Y => n37)
                           ;
   U48 : na210 port map( A => n39, B => n40, Y => n21);
   U49 : na210 port map( A => position_new(4), B => n32, Y => n40);
   U50 : na210 port map( A => position_old_4_port, B => state_0_port, Y => n39)
                           ;
   U51 : na210 port map( A => n41, B => n42, Y => n20);
   U52 : na210 port map( A => position_new(5), B => n32, Y => n42);
   U53 : no210 port map( A => n27, B => state_0_port, Y => n32);
   U54 : iv110 port map( A => state_1_port, Y => n27);
   U55 : mu111 port map( A => state_1_port, B => n43, S => state_0_port, Y => 
                           n41);
   U56 : iv110 port map( A => position_old_5_port, Y => n43);

end synthesised;



