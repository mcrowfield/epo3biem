
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of divider is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component dfr11
      port( D, R, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal tick_port, v_count_0_port, n14, n15, n27, n28, n29, n30, n31, n32, 
      n33, n34, n35, n36, n37, n38, n39 : std_logic;

begin
   tick <= tick_port;
   
   v_count_reg_0_inst : dfr11 port map( D => n15, R => reset, CK => clk, Q => 
                           v_count_0_port);
   v_count_reg_1_inst : dfr11 port map( D => n14, R => reset, CK => clk, Q => 
                           tick_port);
   U29 : iv110 port map( A => n27, Y => yv(4));
   U30 : na210 port map( A => row(8), B => disp_ena, Y => n27);
   U31 : iv110 port map( A => n28, Y => yv(3));
   U32 : na210 port map( A => row(7), B => disp_ena, Y => n28);
   U33 : iv110 port map( A => n29, Y => yv(2));
   U34 : na210 port map( A => row(6), B => disp_ena, Y => n29);
   U35 : iv110 port map( A => n30, Y => yv(1));
   U36 : na210 port map( A => row(5), B => disp_ena, Y => n30);
   U37 : iv110 port map( A => n31, Y => yv(0));
   U38 : na210 port map( A => row(4), B => disp_ena, Y => n31);
   U39 : iv110 port map( A => n32, Y => xv(5));
   U40 : na210 port map( A => column(7), B => disp_ena, Y => n32);
   U41 : iv110 port map( A => n33, Y => xv(4));
   U42 : na210 port map( A => column(6), B => disp_ena, Y => n33);
   U43 : iv110 port map( A => n34, Y => xv(3));
   U44 : na210 port map( A => column(5), B => disp_ena, Y => n34);
   U45 : iv110 port map( A => n35, Y => xv(2));
   U46 : na210 port map( A => column(4), B => disp_ena, Y => n35);
   U47 : iv110 port map( A => n36, Y => xv(1));
   U48 : na210 port map( A => column(3), B => disp_ena, Y => n36);
   U49 : iv110 port map( A => n37, Y => xv(0));
   U50 : na210 port map( A => column(2), B => disp_ena, Y => n37);
   U51 : ex210 port map( A => v_count_0_port, B => shz, Y => n15);
   U52 : ex210 port map( A => n38, B => n39, Y => n14);
   U53 : na210 port map( A => v_count_0_port, B => shz, Y => n39);
   U54 : iv110 port map( A => tick_port, Y => n38);

end synthesised;



